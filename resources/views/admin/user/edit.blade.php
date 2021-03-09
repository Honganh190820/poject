@extends('admin.layouts.main')
@section('content')
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-9 col-lg-9">
                <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header with-border">
                        <div class="row">
                            <div class="col-md-9">
                                <h3>
                                    Sửa thông tin người dùng
                                </h3>
                            </div>
                            <div class="col-md-1" style="margin-top: 10px;">
                                <a class="btn btn-success " href="{{route('admin.user.index')}}"><span class="glyphicon glyphicon-repeat"></span> Quay lại danh sách</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="{{route('admin.user.update', ['id' => $user->id ] )}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="box-body">
                            <div class="form-group">
                                <label>Chọn Quyền</label>
                                <select class="form-control" name="role_id">
                                    <option value="1" {{ ($user->role_id == 1) ? 'selected' : '' }}>Manager</option>
                                    <option value="2" {{ ($user->role_id == 2) ? 'selected' : '' }}>Administrator</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Họ Tên</label>
                                <input value="{{ $user->name }}" type="text" class="form-control" id="name" name="name" placeholder="Nhập họ & tên">
                                @if ($errors->has('name'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('name') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input value="{{ $user->email }}" type="text" class="form-control" id="email" name="email" placeholder="Nhập Email">
                                @if ($errors->has('email'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('email') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1" style="color: #9c3328">** Mật khẩu mới</label>
                                <input type="password" class="form-control" id="new_password" name="new_password" placeholder="Nhập mật khẩu mới">
                                @if ($errors->has('password'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('password') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile" style="color: #9c3328">** Thay đổi ảnh đại diện</label>
                                <input type="file" id="new_avatar" name="image">
                                <br>
                                <img src="{{ asset($user->avatar) }}" width="250">
                                @if ($errors->has('image'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('image') }}</p>
                                @endif
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="1" name="is_active" {{ ($user->is_active == 1) ? 'checked' : '' }}> Kích hoạt tài khoản
                                </label>
                            </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Cập nhật</button>
                        </div>
                    </form>
                </div>
                <!-- /.box -->


            </div>
            <!--/.col (right) -->
        </div>
        <!-- /.row -->
    </section>
@endsection
