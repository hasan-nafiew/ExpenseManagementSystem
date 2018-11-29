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
                                    <p>User</p>
                                    0
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
                                <div class="icon-big icon-basic text-center manage_icon">
                                    <i class="fa fa-bandcamp"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="manage_text_part">
                                    <p>Income Category</p>
                                    0
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
        </div>
    </div>
</div>
@endsection
