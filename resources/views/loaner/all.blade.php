@extends('layouts.admin')
@section('content')
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="col-md-6 text_panel_head padnone ">
                                All Loaner Information
                            </div>
                            <div class="col-md-6 text-right padnone">
                                <a href="{{url('/admin/loaner/add')}}" class="btn btn-info btn-fill btn-sm btnu"><i class="fa fa-plus-circle"></i> Add Loaner</a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="panel-body">
                            <div class="content table-responsive table-full-width">
                                <table id="allloanerinfo" class="table table-striped table-bordered table_customize">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Phone</th>
                                            <th>Email</th>
                                            <th>Status</th>
                                            <th>Manage</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($all as $data)
                                        <tr>
                                            <td>{{$data->loaner_name}}</td>
                                            <td>{{$data->loaner_phone}}</td>
                                            <td>{{$data->loaner_email}}</td>
                                            <td>---</td>
                                            <td>
                                                <a href="{{url('/admin/loaner/details/'.$data->loaner_id)}}"><i class="fa fa-universal-access fa-lg man_view"></i></a>
                                                <a href="{{url('/admin/loaner/edit/'.$data->loaner_id)}}"><i class="fa fa-edit fa-lg man_edit"></i></a>
                                                <a href="#"><i class="fa fa-trash fa-lg man_delete"></i></a>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
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
