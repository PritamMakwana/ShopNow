@extends('layouts.app')

@section('title','User Profile')

@section('content')

<div class="py-5 bg-light">
    <div class="container">
        <div class="row justify-content-center ">
            <div class="col-md-10">
                @if(session('message'))
                <p class="alert alert-success">{{session('message')}}</p>
                @endif

                @if($errors->any())
                <ul>
                    @foreach ($errors->all() as $errors)
                     <li class="text-danger">{{$errors}}</li>
                    @endforeach
                </ul>
                @endif

                <div class="card shadow">
                    <div class="card-header bg-primary">
                        <h4 class="mb-0 text-white">User Profile</h4>
                    </div>

                    <div class="card-body">
                        <form action="{{url('profile')}}" method="POST">
                            @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                <label>Username</label>
                                <input type="text" name="username" value="{{Auth::user()->name}}" class="from-control"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                <label>Email Address</label>
                                <input type="text" readonly value="{{Auth::user()->email}}" class="from-control"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                <label>Phone Numebr</label>
                                <input type="text" name="phone" value="{{Auth::user()->userDetail->phone ?? ''}}" class="from-control"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                <label>Zip/Pin code</label>
                                <input type="text" name="pin_code" value="{{Auth::user()->userDetail->pin_code ?? ''}}" class="from-control"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                <label>Address</label>
                                <textarea name="address" value="" class="from-control" rows="3">{{Auth::user()->userDetail->address ?? ''}}</textarea>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary">Save Data</button>
                            </div>

                        </div>
                        </form>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>


@endsection

