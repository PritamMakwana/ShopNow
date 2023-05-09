@extends('layouts.admin')

@section('content')

<div class="row">
    <div class="col-md-12 grid-margin">
        @if (session('message'))
            <div class="alert alert-success">{{ session('message') }}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h3>Products
                    <a href="{{ url('admin/products/create') }}" class="btn btn-primary btn-sm float-end">Add Product</a>
                </h3>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>ID</th>
                        <th>Categry</th>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                @php($i = 0)
                <tbody>
                    @forelse ($products as $product)
                    <tr>
                        <td>{{ ++$i}}</td>
                        <td>{{ $product->id }}</td>
                        <td>
                            @if($product->category)
                            {{ $product->category->name }}
                            @else
                            No Category
                            @endif
                        </td>
                        <td>{{ $product->name }}</td>
                        <td>{{ $product->selling_price }}</td>
                        <td>{{ $product->quantity }}</td>
                        <td>{{ $product->status == '1' ? 'Hidden':'Visible'}}</td>
                        <td>
                            <a href="{{url('admin/products/'.$product->id.'/edit')}}" class="btn-sm btn btn-success">Edit</a>
                            <a href="{{url('admin/products/'.$product->id.'/delete')}}" onclick="return confirm('Are you sure,you want to delete this date ?')" class="btn-sm btn btn-danger">Delete</a>
                        </td>


                    </tr>

                    @empty
                    <tr>
                        <td colspan="8">No Product Available</td>
                    </tr>

                    @endforelse
                </tbody>
                </table>

            </div>
        </div>
    </div>
</div>


@endsection


