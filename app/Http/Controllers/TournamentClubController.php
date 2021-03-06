<?php

namespace App\Http\Controllers;

use App\Club;
use App\Fixture;
use App\RoundRobinTour;
use App\RoundrobinTournament;
use Carbon\Carbon;
use DB;
use stdClass;
use View;
use App\TournamentClub;
use App\TournamentsReference;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class TournamentClubController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

//        $a= new TournamentClub();
        $a = [];
        $a['tournament_id'] = $request->tournament_id;
        $a['refer_id'] = $request->refer_id;
        $abc = json_encode($request->club_id);
        $a['club_id'] = $abc;
        $lastid = DB::table('tournament_clubs')->insertGetId($a);

//        return $lastid;

        $input = TournamentClub::findOrFail($lastid);
        $array =  json_decode($input->club_id,true);
        $val = array();
//        return $array;
        foreach ($array as $key=>$value)
        {
            $b=[];
            $b['tournament_id']=$request->tournament_id;
            $b['refer_id']=$request->refer_id;
            $b['club_id']=$value;
           $check =  DB::table('roundrobin_tournament')->insertGetId($b);
//            echo DB::table('clubs')->select('name')->where('id','=',$value)->get();
            $val[1] = DB::table('roundrobin_tournament')
                ->join('clubs','roundrobin_tournament.club_id','clubs.id')
                ->join('tournaments','roundrobin_tournament.tournament_id','tournaments.id')
              //  ->join('tournaments_references,','roundrobin_tournament.tournament_id','tournaments_references.id')
                ->selectRaw('clubs.name AS c_name,tournaments.name AS t_name,roundrobin_tournament.total_matches,roundrobin_tournament.win_matches,roundrobin_tournament.loss_matches,roundrobin_tournament.tie_matches,roundrobin_tournament.points_matches,roundrobin_tournament.rr_matches')
                ->where('roundrobin_tournament.refer_id','=',$request->refer_id)
                ->get();
            //$val['c_name'] = $request->club_id;
        }



            $data = TournamentsReference::where('id','=',$request->refer_id)->get();
        TournamentsReference::where('id','=',$request->refer_id)->update([
            'status'=>1
        ]);


//        $fix = DB::table('roundrobin_tournament')->select('club_id')->where('refer_id','=',$request->refer_id)->get();
        $tr = TournamentsReference::where('id','=',$request->refer_id)->get();
        //return $tr[0]->ground_id;
        $ground = $tr[0]->ground_id;
        $tournament = $tr[0]->tournament_id;
        $time = $tr[0]->time;
        //date k dekhna ha

        $fix = RoundrobinTournament::selectRaw('*')->where('refer_id','=',$request->refer_id)->get();

        $date = TournamentsReference::select('starting_date')->where('id','=',$request->refer_id)->first()->starting_date;


        $day = 2;
        foreach ($fix as $key=>$value)
        {
            foreach ($fix as $ke=>$valu) {
//            echo $fix[$key]->club_id . '<br>';

                if ($key != $ke) {
                    $clubs['club_id_1'] = $fix[$key]->club_id;
                    $clubs['club_id_2'] = $fix[$ke]->club_id;
                    $clubs['ground_id'] = $ground;
                    $clubs['tournament_id'] = $tournament;
                    $clubs['match_time'] = "10 AM";
                    $clubs['refer_id'] = $request->refer_id;
                    $date2 = Carbon::parse($date)->addDays($day)->format('y-m-d');
                    $clubs['match_date'] = $date2;
                    $day = $day +2;



                    Fixture::create($clubs);
                }
            }
        }





        $refer_id = encrypt($request->refer_id);
        if ($check)
        {
            return redirect(route('edition.tournament_table',$refer_id));
        }




    }
    public function table($refer_id)
    {
        $refer_id = decrypt($refer_id);
        $val = DB::table('roundrobin_tournament')
            ->join('clubs','roundrobin_tournament.club_id','clubs.id')
            ->join('tournaments','roundrobin_tournament.tournament_id','tournaments.id')
            ->selectRaw('clubs.name AS c_name,tournaments.name AS t_name,roundrobin_tournament.total_matches,roundrobin_tournament.win_matches,roundrobin_tournament.loss_matches,roundrobin_tournament.tie_matches,roundrobin_tournament.points_matches,roundrobin_tournament.rr_matches')
            ->where('roundrobin_tournament.refer_id','=',$refer_id)
            ->get();

        $data = TournamentsReference::where('id','=',$refer_id)->get();

//        $date = TournamentsReference::select('starting_date')->where('id','=',$refer_id)->first()->starting_date;
//
//
//      return  Carbon::parse($date)->addDays('2')->format('y-m-d');




        $fixtures = Fixture::where('refer_id','=',$refer_id)->get();





        // Session::flash('created_edition','The Request For The Edition Created.');
        return view('admin.tournaments.editions.tournament_table',compact('val','data','fixtures'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {


        $editions = TournamentsReference::findOrFail($id)->get();
        // return $editions;
        $clubs = Club::pluck('name','id','')->all();


        $data = TournamentsReference::findOrFail($id);

        $club_brackets = TournamentClub::where('id','=','4')->get();
//        $clubs =  $club_brackets[0]->club_id;

//        $clubs2 = Club::pluck('name');


//        $array =  json_decode($club_brackets,true);
//        echo $array['club_id'];
        /*return mb_substr($clubs,2,4);*/


        return view('admin.tournaments.editions.show',compact('editions','clubs','data','club_brackets'));


    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $clubs = Club::pluck('name','id','')->all();


        $data = TournamentsReference::findOrFail($id);



        return view('admin.tournaments.editions.edit',compact('clubs','data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }




}
