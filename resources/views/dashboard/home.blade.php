@extends('layouts.admin')
@section('content')
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-3">
                                <div class="icon-big icon-primary text-center">
                                    <i class="fa fa-user-circle"></i>
                                </div>
                            </div>
                            <div class="col-xs-9">
                                <div class="numbers">
                                    <p>All User</p>
                                    01
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="#"><i class="fa fa-share-square fa-lg"></i> View</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-3">
                                <div class="icon-big icon-success text-center">
                                    <i class="ti-wallet"></i>
                                </div>
                            </div>
                            <div class="col-xs-9">
                                <div class="numbers">
                                    <p>Total Income</p>
                                    {{$totalIncome}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="#"><i class="fa fa-share-square fa-lg"></i> View</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-3">
                                <div class="icon-big icon-warning text-center">
                                    <i class="fa fa-cubes"></i>
                                </div>
                            </div>
                            <div class="col-xs-9">
                                <div class="numbers">
                                    <p>Total Expense</p>
                                    {{$totalExpense}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="#"><i class="fa fa-share-square fa-lg"></i> View</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="card">
                    <div class="content">
                        <div class="row">
                            <div class="col-xs-3">
                                <div class="icon-big icon-info text-center">
                                    <i class="fa fa-cloud"></i>
                                </div>
                            </div>
                            <div class="col-xs-9">
                                <div class="numbers">
                                    <p>Savings</p>
                                    {{$totalIncome-$totalExpense}}
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />
                            <div class="stats">
                                <a href="#"><i class="fa fa-share-square fa-lg"></i> View</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="col-md-6 text_panel_head padnone">
                                Last 7 Days Status
                            </div>
                            <div class="col-md-6 text-right padnone">
                                <a href="{{url('/admin/income/add')}}" class="btn btn-info btn-fill btn-sm btnu"><i class="fa fa-plus-circle"></i> Income</a>
                                <a href="{{url('/admin/expense/add')}}" class="btn btn-info btn-fill btn-sm btnu"><i class="fa fa-plus-circle"></i> Expense</a>
                                <a href="{{url('/admin/summary')}}" class="btn btn-info btn-fill btn-sm btnu"><i class="fa fa-th"></i> Summary</a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="panel-body">
                            <div class="content table-responsive table-full-width">
                                <table id="seveendayreport" class="table table-striped table-bordered table_customize table_summary">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Category</th>
                                            <th class="details">Details</th>
                                            <th>Credit</th>
                                            <th>Debit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($last_7days_income as $data)
                                        <tr>
                                            <td>{{$data->income_date}}</td>
                                            <td>{{$data->giveme->incate_name}}</td>
                                            <td class="details">{{$data->income_details}}</td>
                                            <td>{{$data->income_amount}}</td>
                                            <td>---</td>
                                        </tr>
                                        @endforeach
                                        @foreach($last_7days_expense as $data)
                                        <tr>
                                            <td>{{$data->expense_date}}</td>
                                            <td>{{$data->giveme->expcate_name}}</td>
                                            <td class="details">{{$data->expense_details}}</td>
                                            <td>---</td>
                                            <td>{{$data->expense_amount}}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th></th>
                                            <th></th>
                                            <th class="details" style="text-align: right;">Total</th>
                                            <th>{{$last_7days_all_income}}</th>
                                            <th>{{$last_7days_all_expense}}</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <a href="#" class="btn btn-sm btn-fill btnu btn-primary">Excel</a>
                            <a href="#" class="btn btn-sm btn-fill btnu btn-warning">PDF</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
