<div>
    <div class="row">
        @forelse ($products as $productsItem )
        <div class="col-md-3">
            <div class="product-card">
                <div class="product-card-img">
                    @if($productsItem->quantity>0)
                    <label class="stock bg-success">In Stock</label>
                    @else
                    <label class="stock bg-danger">Out of Stock</label>
                    @endif
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

        @empty
        <div class="col-md-12">
            <div class="p-2">
                <h4>No Products Avaliable for {{$category->name}}</h4>
            </div>
        </div>


        @endforelse
    </div>
</div>
