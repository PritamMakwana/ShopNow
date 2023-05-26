<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Carbon\Carbon;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index(Request $request){
        // $todayDate = Carbon::now();
        // $orders = Order::whereDate('created_at',$todayDate)->paginate(10);
        $todayDate = Carbon::now()->format('Y-m-d');
        $orders = Order::when($request->date != null ,function ($q) use ($request){
                            return $q->whereDate('created_at',$request->date);
                         }, function ($q) use ($todayDate){
                            return $q->whereDate('created_at',$todayDate);
                         })
                         ->when($request->status != null ,function ($q) use ($request){
                            return $q->where('status_message',$request->status);
                         })
                         ->paginate(10);


        return view('admin.orders.index',compact('orders'));
    }

    public function show(int $orderId){

        $orders = Order::where('id',$orderId)->first();
        if($orders){
        return view('admin.orders.view',compact('orders'));
        }else{
            return redirect('admin/orders')->with('message','Order Id not found');
        }

    }
}
