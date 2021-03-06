@extends('admin.layouts.main')
@section('content')
    <style>tr td:first-child {max-width: 250px}</style>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <div class="">
                            <div class="">
                                <div class="row">
                                    <div class="col-md-9">
                                        <h3>
                                            Danh sách bài viết
                                        </h3>
                                    </div>
                                    <div class="col-md-1" style="margin-top: 17px;margin-left: 126px;">
                                        <a  class="btn btn-primary" href="{{ route('admin.article.create') }}"><span class="glyphicon glyphicon-plus"></span> Thêm mới</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>TT</th>
                                <th style="max-with:200px">Tên bài viết</th>
                                <th>Hình ảnh</th>
                                <th>Người tạo</th>
                                <th>Tóm tắt</th>
                                <th>Hiển thị</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($data as $key => $item)
                                <tr class="item-{{ $item->id }}"> <!-- Thêm Class Cho Dòng -->
                                    <td>{{ ($key + 1) }}</td>
                                    <td>{{ substr($item->title, 0, 50) }}</td>
                                    <td>
                                    @if ($item->image) <!-- Kiểm tra hình ảnh tồn tại -->
                                        <img src="{{ asset($item->image) }}" width="65" height="50">
                                        @endif
                                    </td>
                                    <td>{{ $item->user->name ?? 'trống'}}</td>
                                    <td>{!! substr($item->summary, 0, 100) !!}</td>
                                    <td>{{ ($item->is_active == 1) ? 'Hiển thị' : 'Ẩn' }}</td>
                                    <td class="text-center">
                                        <a href="{{ route('admin.article.edit', ['id'=> $item->id]) }}">
                                            <i class="fa fa-edit"></i>
                                        </a> |
                                        <!-- Thêm sự kiện onlick cho nút xóa -->
                                        <a href="javascript:void(0)" onclick="destroyModel('article', {{ $item->id }})" >
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                    <!-- /.box-body -->

                </div>
                <!-- /.box -->
                {{ $data->links() }}
            </div>
        </div>
        <!-- /.row -->
    </section>


@endsection
