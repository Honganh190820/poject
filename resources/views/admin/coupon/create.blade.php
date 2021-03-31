@extends('admin.layouts.main')
@section('content')
    <style>.w-50 { width: 50% }</style>
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-9 col-lg-9">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <div class="row">
                            <div class="col-md-9">
                                <h3>
                                    Thêm mới sự kiện
                                </h3>
                            </div>
                            <div class="col-md-1" style="margin-top: 10px;">
                                <a class="btn btn-success " href="{{ route('admin.coupon.index') }}"><span class="glyphicon glyphicon-repeat"></span> Quay lại danh sách</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->

                    <form role="form" action="{{ route('admin.coupon.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Mã giảm giá</label>
                                <input type="text" class="form-control" id="code" name="code" placeholder="Nhập mã giảm giá">
                                @if ($errors->has('code'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('code') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Mức khuyến mãi</label>
                                <input type="number" class="form-control" id="percent" name="percent" placeholder="Nhập mã khuyến mãi">
                                @if ($errors->has('percent'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('percent') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label>
                                    <input type="checkbox" value="1" name="type"> Được áp dụng
                                </label>
                            </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Tạo</button>
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
