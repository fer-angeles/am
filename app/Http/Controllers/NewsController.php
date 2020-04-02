<?php

namespace App\Http\Controllers;

use App\Entities\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{

    public function detail($url,$date,$id)
    {
        if ( !filter_var($id, FILTER_VALIDATE_INT) )
            return abort(404);

        $new = News::find($id);

        if ( !isset($new->id) )
            return abort(404);

        return view('News.details',[
            'first' => $new
        ]);
    }

}
