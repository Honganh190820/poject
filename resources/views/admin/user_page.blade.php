<style>
    .card-primary.card-outline {
        border-top: 3px solid #007bff;
    }
    .card {
        box-shadow: 0 0 1px rgb(0 0 0 / 13%), 0 1px 3px rgb(0 0 0 / 20%);
        margin-bottom: 1rem;
    }
    .card-header {
        background-color: transparent;
        border-bottom: 1px solid rgba(0,0,0,.125);
        padding: .75rem 1.25rem;
        position: relative;
        border-top-left-radius: .25rem;
        border-top-right-radius: .25rem;
    }
    .card {
        position: relative;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-direction: column;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 0 solid rgba(0,0,0,.125);
        border-radius: .25rem;
        margin-top: 20px;

    }
    .card-body {
        -ms-flex: 1 1 auto;
        flex: 1 1 auto;
        min-height: 1px;
        padding: 1.25rem;
    }
    .profile-username {
        font-size: 21px;
        margin-top: 5px;
    }

    .text-center {
        text-align: center!important;
    }
    .text-muted {
        color: #6c757d!important;
    }
    .position-relative {
        position: relative!important;
    }
    .img-circle {
        border-radius: 50%;
    }
    .profile-user-img {
        border: 3px solid #adb5bd;
        margin: 0 auto;
        padding: 3px;
        width: 100px;
    }
    .img-fluid {
        max-width: 100%;
        height: auto;
    }
    img {
        vertical-align: middle;
        border-style: none;
    }
    .box-camera {
        bottom: 0;
        left: 55%;
        padding: 0px 5px 0 5px;
        background: rgb(233, 227, 227, 0.3);
        border-radius: 100%;
        cursor: pointer;
    }
    .position-absolute {
        position: absolute!important;
    }
</style>
@extends('admin.layouts.main')
@section('content')
    <div ui-view="" class="ng-scope">
        <section class="content-header ng-scope">
            <h1>THÔNG TIN TÀI KHOẢN</h1>
        </section>
        <!-- Main content -->
        <section class="content ng-scope">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">

                        <!-- Profile Image -->
                        <div class="card card-primary card-outline">
                            <div class="card-body box-profile">
                                <h3 class="profile-username text-center ng-binding">{{ Auth::user()->name }}</h3>
                                <h4 class="text-muted text-center"></h4>
                                <div class="text-center position-relative">
                                    <img class="profile-user-img img-fluid img-circle" src="{{ Auth::user()->image }}" alt="User profile picture">
                                    <!-- box camera -->
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="profile-username text-center">
                                            <i class="fa fa-key" aria-hidden="true">&nbsp;&nbsp; </i>
                                            Quyền
                                        </h3>
                                    </div>
                                    <div style="text-align: center; font-size: 16px;" class="card-body">{{Auth::user()->role_id == 1 ? 'Manager' : 'Admin'}}</div>
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="settings">

                                        <form name="profileForm" class="form-horizontal ng-pristine ng-valid-email ng-valid ng-valid-required" ng-submit="profileSubmit(profileForm.$valid)">
                                            <div class="form-group row" ng-class="{ 'was-validated' : profileForm.name.$invalid &amp;&amp; !profileForm.name.$pristine }">
                                                <label for="inputName" class="col-sm-2 col-form-label">Họ tên:</label>
                                                <div class="col-sm-10">
                                                    <p>{{ Auth::user()->name }}</p>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">Giới tính:</label>
                                                <div class="col-sm-2">
                                                    <p>{{ Auth::user()->gender ? 'Nam' : 'Nữ'}}</p>
                                                </div>
                                            </div>

{{--                                            <div class="form-group row">--}}
{{--                                                <label for="inputBirdDay" class="col-sm-2 col-form-label">Ngày sinh:</label>--}}
{{--                                                <div class="col-sm-10">--}}
{{--                                                    --}}
{{--                                                </div>--}}
{{--                                            </div>--}}
                                            <div class="form-group row">
                                                <label for="inputCMND" class="col-sm-2 col-form-label">Số CMND:</label>
                                                <div class="col-sm-10">
                                                    <p>{{ Auth::user()->CMND }}</p>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputAddress" class="col-sm-2 col-form-label">Địa chỉ:</label>
                                                <div class="col-sm-10">
                                                    <p>{{ Auth::user()->address}}</p>
                                                </div>
                                            </div>
                                            <div class="form-group row" ng-class="{ 'was-validated' : profileForm.email.$invalid &amp;&amp; !profileForm.email.$pristine }">
                                                <label for="inputEmail" class="col-sm-2 col-form-label">Email:</label>
                                                <div class="col-sm-10">
                                                    <p>{{ Auth::user()->email }}</p>
                                                </div>
                                            </div>
                                            <div class="form-group row" ng-class="{ 'was-validated' : profileForm.phone.$invalid &amp;&amp; !profileForm.phone.$pristine  }">
                                                <label for="inputPhone" class="col-sm-2 col-form-label">Số điện thoại:</label>
                                                <div class="col-sm-10">
                                                    <p>{{ Auth::user()->phone }}</p>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                    <!-- /.tab-pane -->
                                </div>
                                <!-- /.tab-content -->
                            </div><!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
