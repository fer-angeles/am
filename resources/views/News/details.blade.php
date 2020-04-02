@extends('layouts.app')

@section('meta')
    <meta name="og:title" content="{{ $first->title }}" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="{{ route('news.detail',[ 'url' => $first->url, 'date' => $first->created_at->format('Ymd'), 'id' => $first->id  ]) }}" />
    <meta property="og:description" content="{!! strip_tags(htmlspecialchars_decode($first->abstract)) !!}" />
    <meta property="og:site_name" content="Periódico AM" />
    <meta property="og:image" content="{{ url('img/'.$first->img) }}" />
@endsection

@section('content')
    <br><br>
    <div class="row align-items-center my-5">
        <div class="col-lg-7">
            <img class="img-fluid rounded mb-4 mb-lg-0" src="{{ asset('img/'.$first->img) }}" alt="{{ $first->url }}" title="{{ $first->url }}" style="">
        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-5">
            <a href="#!">
                <h1 class="font-weight-light">
                    {{ $first->title }}
                </h1>
            </a>
            <p>{!! htmlspecialchars_decode($first->abstract) !!}</p>
        </div>
        <!-- /.col-md-4 -->
    </div>
    <p>
        {!! htmlspecialchars_decode($first->context) !!}
    </p>
    <br><br><br>
@endsection
