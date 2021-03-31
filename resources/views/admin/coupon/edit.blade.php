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
                                    Sửa danh mục
                                </h3>
                            </div>
                            <div class="col-md-1" style="margin-top: 10px;">
                                <a class="btn btn-success " href="{{route('admin.coupon.index')}}"><span class="glyphicon glyphicon-repeat"></span> Quay lại danh sách</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="{{  route('admin.coupon.update', ['id' => $coupon->id ])}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Mã khuyến mãi</label>
                                <input value="{{ $coupon->code }}" type="text" class="form-control" id="code"
                                       name="code">
                                @if ($errors->has('code'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('code') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Mức giảm giá</label>
                                <input value="{{ $coupon->percent }}" type="text" class="form-control" id="percent"
                                       name="percent">
                                @if ($errors->has('percent'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('percent') }}</p>
                                @endif
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input {{ ($coupon->type) ? 'checked' : '' }} type="checkbox" value="1"
                                           name="is_active"> Được áp dụng
                                </label>
                            </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Lưu</button>
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
