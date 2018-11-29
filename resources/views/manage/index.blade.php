@extends('layouts.admin')
@section('content')
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-basic text-center manage_icon">
                                    <i class="fa fa-bandcamp"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Basic Information</p>
                                    0{{$basic}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="#"><i class="fa fa-share-square fa-lg"></i> Basic Information</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-primary text-center manage_icon">
                                    <i class="fa fa-address-book"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Loaner</p>
                                    @if($loaner<10)
                                      0{{$loaner}}
                                    @else
                                      {{$loaner}}
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/loaner')}}"><i class="fa fa-share-square fa-lg"></i> Manage Loaner</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-success text-center manage_icon">
                                    <i class="fa fa-gift"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Income Category</p>
                                    @if($allincate<10)
                                      0{{$allincate}}
                                    @else
                                      {{$allincate}}
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/income/category')}}"><i class="fa fa-share-square fa-lg"></i> Manage Income Category</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-info text-center manage_icon">
                                    <i class="fa fa-pie-chart"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Expense Category</p>
                                    @if($allexpcate<10)
                                      0{{$allexpcate}}
                                    @else
                                      {{$allexpcate}}
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/expense/category')}}"><i class="fa fa-share-square fa-lg"></i> Manage Expense Category</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-primary text-center manage_icon">
                                    <i class="fa fa-credit-card-alt"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Total Loan Received</p>
                                    {{$totalRec}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/loan/received')}}"><i class="fa fa-share-square fa-lg"></i> Manage Loan Received</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-primary text-center manage_icon">
                                    <i class="fa fa-credit-card-alt"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Total Loan Paid</p>
                                    {{$totalPaid}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/loan/paid')}}"><i class="fa fa-share-square fa-lg"></i> Manage Loan Paid</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-primary text-center manage_icon">
                                    <i class="fa fa-credit-card-alt"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Total Loan Given</p>
                                    {{$totalGiven}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/loan/given')}}"><i class="fa fa-share-square fa-lg"></i> Manage Loan Given</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-primary text-center manage_icon">
                                    <i class="fa fa-credit-card-alt"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Total Loan Payment</p>
                                    {{$totalPayment}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/loan/payment')}}"><i class="fa fa-share-square fa-lg"></i> Manage Loan Payment</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-warning text-center manage_icon">
                                    <i class="fa fa-modx"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Loan Paid</p>
                                    {{$totalPaid}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/loan/paid')}}"><i class="fa fa-share-square fa-lg"></i> Manage Loan Paid</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-warning text-center manage_icon">
                                    <i class="fa fa-modx"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Loan Paid</p>
                                    {{$totalPaid}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/loan/paid')}}"><i class="fa fa-share-square fa-lg"></i> Manage Loan Paid</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-warning text-center manage_icon">
                                    <i class="fa fa-modx"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Loan Paid</p>
                                    {{$totalPaid}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/loan/paid')}}"><i class="fa fa-share-square fa-lg"></i> Manage Loan Paid</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="icon-big icon-warning text-center manage_icon">
                                    <i class="fa fa-modx"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Loan Paid</p>
                                    {{$totalPaid}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="{{url('/admin/loan/paid')}}"><i class="fa fa-share-square fa-lg"></i> Manage Loan Paid</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
