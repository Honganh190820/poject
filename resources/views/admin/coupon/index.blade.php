@extends('admin.layouts.main')
@section('content')
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <div class="">
                            <div class="" >
                                <div class="row">
                                    <div class="col-md-9">
                                        <h3>
                                            Danh sách khuyễn mãi
                                        </h3>
                                    </div>
                                    <div class="col-md-1" style="margin-top: 17px;margin-left: 126px;">
                                        <a  class="btn btn-primary" href="{{ route('admin.coupon.create') }}"><span class="glyphicon glyphicon-plus"></span> Thêm mới</a>
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
                                <th>Mã khuyến mãi</th>
                                <th>Mức khuyến mãi</th>
                                <th>Được áp dụng</th>
                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($coupons as $key => $item)
                                <tr class="item-{{ $item->id }}">
                                    <td>{{ $item->code }}</td>
                                    <td>{{ $item->percent }}</td>
                                    <td>{{ ($item->type == 1) ? 'Áp dụng' : 'Hết hạn' }}</td>
                                    <td class="text-center">
                                        <a href="{{ route('admin.coupon.edit', [ 'id'=> $item->id ]) }}">
                                            <i class="fa fa-edit"></i>
                                        </a> |
                                        <a href="javascript:void(0)"  onclick="destroyModel('coupon', {{ $item->id }})" >
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix">
                        <ul class="pagination pagination-sm no-margin">
                        </ul>
                    </div>
                </div>
                <!-- /.box -->
            </div>
        </div>
        <!-- /.row -->
    </section>
@endsection
