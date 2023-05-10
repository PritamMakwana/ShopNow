@extends('layouts.admin')

@section('content')

<div class="row">
    <div class="col-md-12 grid-margin">
        @if (session('message'))
            <div class="alert alert-success">{{ session('message') }}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h3>Slider List
                    <a href="{{ url('admin/sliders/create') }}" class="btn btn-primary btn-sm float-end">Add Sliders</a>
                </h3>
            </div>
            <div class="card-body">
                <table class="table table-borderd table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Image</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    @php($i = 0)
                    <tbody>
                        @foreach ($sliders as $slider)
                        <tr>
                            <td>{{ ++$i}}</td>
                            <td>{{ $slider->id}}</td>
                            <td>{{ $slider->title}}</td>
                            <td>{{ $slider->description}}</td>
                            <td>
                            <img style="width:70px;height:70px;" src="{{asset($slider->image)}}" alt="img"/>
                            </td>
                            <td>{{ $slider->status ? 'Hidden' : 'Visible'}}</td>
                            <td>
                                <a href="{{url('admin/sliders/'.$slider->id.'/edit')}}" class="btn btn-success btn-sm">Edit</a>
                                <a href="{{url('admin/sliders/'.$slider->id.'/delete')}}"
                                    onclick="return confirm('Are you sure you want to delete the {{ $slider->title}} Slider ? ')" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


@endsection
