<?php

namespace App\Http\Controllers;

use App\Entities\News;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $first = News::orderBy('created_at','desc')->first();

        return view('welcome')->with([
            'news' => News::select('*')->where('id','<>',$first->id)->paginate(3),
            'first' => $first
        ]);

    }

    public function search()
    {
        $q = \request()->get('q');

        $response = ( $q != '' ) ? News::select('*')->where('title','like','%'.$q.'%')->get() : News::select('*')->paginate(3);

        foreach ($response as $rr)
        {
            $rr->abstract = htmlspecialchars_decode($rr->abstract);
        }

        return response()->json($response);
    }
}
