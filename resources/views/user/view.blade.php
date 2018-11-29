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
                                All User Information
                            </div>
                            <div class="col-md-6 text-right padnone">
                                <a href="{{url('/admin/user/add')}}" class="btn btn-info btn-fill btn-sm btnu"><i class="fa fa-plus-circle"></i> Add User</a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="panel-body">
                            <div class="content table-responsive table-full-width">
                                <table class="table table-striped table-bordered table_customize">                            <tr class="text-right">
                                            <th>Name</th>
                                            <td>{{$data->name}}</td>                                                  
                                        </tr>          
                                        <tr class="text-right">
                                            <th>Email Address</th>
                                            <td>{{$data->email}}</td>                                                                               
                                        </tr>
                                        <tr>
                                            <th>Subject</th> 
                                            <td>{{}}</td>  
                                        </tr>  
                                        <tr>
                                            <th>Message</th> 
                                            <td>{{}}</td>  
                                        </tr>                    
                                                                                                 
                             
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
