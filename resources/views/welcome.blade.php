@extends('layouts.app')
@section('content')
    <!-- Heading Row -->
    <br><br>
    <div class="row align-items-center my-5">
        <div class="col-lg-7">
            <img class="img-fluid rounded mb-4 mb-lg-0" src="{{ asset('img/'.$first->img) }}" alt="{{ $first->url }}" title="{{ $first->url }}" style="">
        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-5">
            <a href="{{ route('news.detail',[ 'url' => $first->url, 'date' => $first->created_at->format('Ymd'), 'id' => $first->id  ]) }}">
                <h1 class="font-weight-light">
                    {{ $first->title }}
                </h1>
            </a>
            <p>{!! htmlspecialchars_decode($first->abstract) !!}</p>
        </div>
        <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->

    <!-- Call to Action Well -->
    <div class="card text-white bg-secondary my-5 py-4 text-center">
        <div class="card-body">
            <p class="text-white m-0">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroupPrepend">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </span>
                </div>
                <input type="text" class="form-control" id="buscador" aria-describedby="inputGroupPrepend" placeholder="¿Qué buscas?">
            </div>
            </p>
        </div>
    </div>

    <!-- Content Row -->
    @if( isset($news) )
        <div class="groupNews">
            <div class="loaderNews" style="display: none; margin: 0 auto;" >
                <i class="fa fa-spin fa-spinner"></i>
            </div>
            <div class="contentNews">
                <div class="row">
                    @foreach($news as $new)
                        <div class="col-md-4 mb-5">
                            <div class="card h-100">
                                <img src="{{ asset('img/'.$new->img) }}" class="card-img-top" alt="{{ $new->title }}" title="{{ $new->title }}">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        <a href="{{ route('news.detail',[ 'url' => $new->url, 'date' => $new->created_at->format('Ymd'), 'id' => $new->id  ]) }}">{{ $new->title }}</a>
                                    </h5>
                                    <p class="card-text"> {!! htmlspecialchars_decode($new->abstract) !!} </p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    @endif
    <!-- /.row -->
@endsection
@section('javascript')
    <script>
        $(document).ready(function(){
            $('#buscador').keydown(function(e){

                var val = $(this).val();

                $.ajax({
                    type: 'POST',
                    data: {
                        "_token": "{{ csrf_token() }}",
                        q:val },
                    url: "{{ route('news.search') }}",
                    beforeSend:function(){
                        $('.loaderNews').show();
                        $('.contentNews').hide();
                    },
                    success: function (data) {

                        if(data.length > 0)
                        {
                            for (var i in data)
                            {
                                console.log(data[i]);
                                var html = '<div class="col-md-4 mb-5">' +
                                    '<div class="card h-100">' +
                                        '<img src="{{ asset('img') }}/'+data[i].img+'" class="card-img-top" alt="" title="'+data[i].title+'">' +
                                        '<div class="card-body">' +
                                            '<h5 class="card-title">' +
                                                '<a href="{{ route('news.detail') }}/'+data[i].url+'/'+data[i].formattedDate+'/'+data[i].id+'">'+data[i].title+'</a>' +
                                            '</h5>' +
                                            '<p class="card-text">'+data[i].abstract+'</p>' +
                                        '</div>' +
                                    '</div>' +
                                '</div>';

                                $(document).find('.contentNews .row').html('');
                                $(document).find('.contentNews .row').html(html);
                            }
                        }

                    },
                    complete:function(){
                        $('.loaderNews').hide();
                        $('.contentNews').show();
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert('Problemas con la consulta');
                    }
                });

                console.log($(this).val());

            });
        });
    </script>
@endsection
