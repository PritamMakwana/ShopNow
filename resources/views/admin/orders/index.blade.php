@extends('layouts.admin')

@section('title','My Order')

@section('content')
<div class="row">
    <div class="col-md-12 grid-margin">
        <div class="card">
            <div class="card-header">
                <h3>My Order</h3>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <th>Order ID</th>
                            <th>Tracking No</th>
                            <th>Username</th>
                            <th>Payment Mode</th>
                            <th>Ordered Date</th>
                            <th>Status Message</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                            @forelse ($orders as $item)
                            <tr>
                                <td>{{ $item->id }}</td>
                                <td>{{ $item->tracking_no }}</td>
                                <td>{{ $item->fullname }}</td>
                                <td>{{ $item->payment_mode }}</td>
                                <td>{{ $item->created_at->format('d-m-Y') }}</td>
                                <td>{{ $item->status_message }}</td>
                                <td><a href="{{url('admin/orders/'.$item->id)}}" class="btn btn-primary btn-sm">View</a></td>
                            </tr>
                            @empty
                            <tr>
                                <td colspan="8">No Orders available</td>
                            </tr>

                            @endforelse

                        </tbody>
                    </table>
                    <div>
                        {{$orders->links()}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection