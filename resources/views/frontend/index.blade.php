@extends('layouts.app')

@section('title','Home Page')

@section('content')
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">

    <div class="carousel-inner">

        @foreach ($sliders as $Key => $sliderItem)


      <div class="carousel-item {{$Key == 0 ? 'active':''}} ">
        @if($sliderItem->image)
        <img style="height:500px" src="{{asset("$sliderItem->image")}}" class="d-block w-100" alt="...">
        @endif

        <div class="carousel-caption d-none d-md-block">
            <div class="custom-carousel-content">
                <h1>
                    {{$sliderItem->title}}
                </h1>
                <p>
                    {{$sliderItem->description}}
                </p>
                <div>
                    <a href="#" class="btn btn-slider">
                        Get Now
                    </a>
                </div>
            </div>
        </div>
    </div>



      </div>

      @endforeach

    </div>

    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <div class="py-5 bg-white">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 text-center">
                <h4>Welcome to ShopNow of Web IT E-commerce</h4>
                <div class="underline mx-auto"></div>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis nisi natus laborum iure repellendus ipsum obcaecati adipisci excepturi fugit! Repellat nulla facere neque similique consequatur voluptatem optio qui debitis ducimus.
                </p>
            </div>
        </div>
    </div>
  </div>

  <div class="py-5 bg-light">
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
              <h4>Trending Products</h4>
              <div class="underline mb-4"></div>
            </div>
            @if($trendingProduct)
            <div class="col-md-12">
                <div class="owl-carousel owl-theme four-carousel">
                @foreach ($trendingProduct as $productsItem )
                    <div class="item">
                    <div class="product-card">
                        <div class="product-card-img">
                            <label class="stock bg-danger">New</label>

                            @if($productsItem->productImages->count()> 0)
                            <a href="{{url('/collections/'.$productsItem->category->slug.'/'.$productsItem->slug)}}">
                                <img src="{{asset($productsItem->productImages[0]->image)}}" alt=" {{$productsItem->name}}">
                            </a>
                            @endif
                        </div>
                        <div class="product-card-body">
                            <p class="product-brand">{{$productsItem->brand}}</p>
                            <h5 class="product-name">
                                <a href="{{url('/collections/'.$productsItem->category->slug.'/'.$productsItem->slug)}}">
                                    {{$productsItem->name}}
                                </a>
                            </h5>
                            <div>
                                <span class="selling-price">{{$productsItem->selling_price}}</span>
                                <span class="original-price">{{$productsItem->original_price}}</span>
                            </div>
                            {{-- <div class="mt-2">
                                <a href="" class="btn btn1">Add To Cart</a>
                                <a href="" class="btn btn1"> <i class="fa fa-heart"></i> </a>
                                <a href="" class="btn btn1"> View </a>
                            </div> --}}
                        </div>
                    </div>
                    </div>

                @endforeach

            </div>

            </div>
            @else
            <div class="col-md-12">
                <div class="p-2">
                    <h4>No Products Avaliable</h4>
                </div>
            </div>
            @endif

        </div>
    </div>
  </div>

  <div class="py-5 ">
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
              <h4>New Arrivals
                <a href="{{url('new-arrivals')}}" class="btn btn-warning float-end">View More</a>
              </h4>
              <div class="underline mb-4"></div>
            </div>
            @if($trendingProduct)
            <div class="col-md-12">
                <div class="owl-carousel owl-theme four-carousel">
                @foreach ($newArrivalsProducts as $productsItem )
                    <div class="item">
                    <div class="product-card">
                        <div class="product-card-img">
                            <label class="stock bg-danger">New</label>

                            @if($productsItem->productImages->count()> 0)
                            <a href="{{url('/collections/'.$productsItem->category->slug.'/'.$productsItem->slug)}}">
                                <img src="{{asset($productsItem->productImages[0]->image)}}" alt=" {{$productsItem->name}}">
                            </a>
                            @endif
                        </div>
                        <div class="product-card-body">
                            <p class="product-brand">{{$productsItem->brand}}</p>
                            <h5 class="product-name">
                                <a href="{{url('/collections/'.$productsItem->category->slug.'/'.$productsItem->slug)}}">
                                    {{$productsItem->name}}
                                </a>
                            </h5>
                            <div>
                                <span class="selling-price">{{$productsItem->selling_price}}</span>
                                <span class="original-price">{{$productsItem->original_price}}</span>
                            </div>
                            {{-- <div class="mt-2">
                                <a href="" class="btn btn1">Add To Cart</a>
                                <a href="" class="btn btn1"> <i class="fa fa-heart"></i> </a>
                                <a href="" class="btn btn1"> View </a>
                            </div> --}}
                        </div>
                    </div>
                    </div>

                @endforeach

            </div>

            </div>
            @else
            <div class="col-md-12">
                <div class="p-2">
                    <h4>No New Arrivals Avaliable</h4>
                </div>
            </div>
            @endif

        </div>
    </div>
  </div>


  <div class="py-5 bg-light">
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
              <h4>Featured Products
                <a href="{{url('featured-products')}}" class="btn btn-warning float-end">View More</a>
              </h4>
              <div class="underline mb-4"></div>
            </div>
            @if($trendingProduct)
            <div class="col-md-12">
                <div class="owl-carousel owl-theme four-carousel">
                @foreach ($featuredProducts as $productsItem )
                    <div class="item">
                    <div class="product-card">
                        <div class="product-card-img">
                            <label class="stock bg-success">Featured</label>

                            @if($productsItem->productImages->count()> 0)
                            <a href="{{url('/collections/'.$productsItem->category->slug.'/'.$productsItem->slug)}}">
                                <img src="{{asset($productsItem->productImages[0]->image)}}" alt=" {{$productsItem->name}}">
                            </a>
                            @endif
                        </div>
                        <div class="product-card-body">
                            <p class="product-brand">{{$productsItem->brand}}</p>
                            <h5 class="product-name">
                                <a href="{{url('/collections/'.$productsItem->category->slug.'/'.$productsItem->slug)}}">
                                    {{$productsItem->name}}
                                </a>
                            </h5>
                            <div>
                                <span class="selling-price">{{$productsItem->selling_price}}</span>
                                <span class="original-price">{{$productsItem->original_price}}</span>
                            </div>
                            {{-- <div class="mt-2">
                                <a href="" class="btn btn1">Add To Cart</a>
                                <a href="" class="btn btn1"> <i class="fa fa-heart"></i> </a>
                                <a href="" class="btn btn1"> View </a>
                            </div> --}}
                        </div>
                    </div>
                    </div>

                @endforeach

            </div>

            </div>
            @else
            <div class="col-md-12">
                <div class="p-2">
                    <h4>No Featured Products Avaliable</h4>
                </div>
            </div>
            @endif

        </div>
    </div>
  </div>






@endsection

@section('scripts')
<script>
$('.four-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:false,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:4
        }
    }
})
</script>


@endsection


