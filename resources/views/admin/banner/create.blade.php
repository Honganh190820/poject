@extends('admin.layouts.main')
@section('content')

    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-9">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <div class="row">
                            <div class="col-md-9">
                                <h3>
                                    Thêm mới banner
                                </h3>
                            </div>
                            <div class="col-md-1" style="margin-top: 10px;">
                                <a class="btn btn-success " href="{{route('admin.banner.index')}}"><span class="glyphicon glyphicon-repeat"></span> Quay lại danh sách</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="{{ route('admin.banner.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tiêu đề</label>
                                <input type="text" class="form-control" id="title" name="title" placeholder="">
                                @if ($errors->has('title'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('title') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Ảnh</label>
                                <input type="file" id="image" name="image">
                                @if ($errors->has('image'))
                                    <p style="color: red" class="help is-danger">{{ $errors->first('image') }}</p>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Liên kết url</label>
                                <input type="text" class="form-control" id="url" name="url" placeholder="url">
                            </div>
                            <div class="form-group">
                                <label>Target</label>
                                <select class="form-control" name="target">
                                    <option value="_blank">Mở tab mới</option>
                                    <option value="_self">Tab hiện tại</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Loại Banner</label>
                                <select class="form-control" name="type">
                                    <option value="1">Slide home</option>
                                    <option value="2">Banner trái</option>
                                    <option value="3">Banner phải</option>
                                    <option value="4">Banner cuối trang</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Vị trí</label>
                                <input type="number" class="form-control" id="position" name="position" min="0" value="0">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="1" name="is_active"> Trạng thái hiển thị
                                </label>
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea id="editor1" name="description" class="form-control" rows="10"></textarea>
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
        </div>
        <!-- /.row -->
    </section>
@endsection

