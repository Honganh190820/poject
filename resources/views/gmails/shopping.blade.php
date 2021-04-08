<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div style="border-style: double">
    <div style="padding: 40px">
        <div>
            <h1 style="font-size: 24px;
        color: #1e1e27;
        font-weight: 700;
        text-transform: uppercase;
        text-align: center;" href="/">colo<span style="color: #fe4c50;">shop</span></h1>
            <p>Số điện thoại: 0969422308 | email: coloshop@gmail.com</p>
            <p>Địa chỉ: 25 Vũ Ngọc Phan, Láng Hạ, Hà Nội</p>
        </div>
        <hr>
        {{--<base href="{{asset()}}">--}}
        <div style="text-align: center">
            <h2 style="color: red;">Thông tin chi tiết hóa đơn</h2>
            <h3>Hóa đơn số: {{$order->code}} </h3>
            <p>Ngày đặt: {{$order->created_at}}</p>
        </div>
        <hr>
        <div>
            <h2>Thông tin khách hàng</h2>
            <p>Họ tên khách hàng: {{$order->fullname}} </p>
            <p>Địa chỉ: {{$order->address}} </p>
            <p>Số điện thoại: {{$order->phone}} </p>
            <p>Ghi chú: {{$order->note}}</p>
        </div>
        <p style="text-align: center">Cảm ơn quý khách đã mua hàng</p>
            <table style="border-bottom: 1px solid #ddd;
        border-right: 1px solid #ddd;
        margin-bottom: 25px;
        width: 80%;" cellspacing="0" class="shop_table cart">
                <tr>
                    <th style="background: none repeat scroll 0 0 #f4f4f4;
        font-size: 15px;
        text-transform: uppercase;" class="product-thumbnail">Ảnh sản phẩm</th>
                    <th style="background: none repeat scroll 0 0 #f4f4f4;
        font-size: 15px;
        text-transform: uppercase;
        margin-bottom: 20px;" class="product-name">Sản phẩm đã đặt mua</th>
                    <th style="background: none repeat scroll 0 0 #f4f4f4;
        font-size: 15px;
        text-transform: uppercase;" class="product-price">Giá tiền</th>
                    <th style="background: none repeat scroll 0 0 #f4f4f4;
        font-size: 15px;
        text-transform: uppercase;" class="product-quantity">Số lượng</th>
                    <th style="background: none repeat scroll 0 0 #f4f4f4;
        font-size: 15px;
        text-transform: uppercase;" class="product-subtotal">Giá tiền</th>
                </tr>
                @foreach($order->details as $item)
                <tbody>
                <tr class="cart-delete cart_item">
                    <td style="border-left: 1px solid #ddd;
        border-top: 1px solid #ddd;
        padding: 15px;
        text-align: center;" class="product-thumbnail">
                        <img width="145" height="145" alt="{{asset($item->name)}}" class="shop_thumbnail" src="{{asset($item->image)}}">
                    </td>

                    <td style="border-left: 1px solid #ddd;
        border-top: 1px solid #ddd;
        padding: 15px;
        text-align: center; font-size: 18px;
        margin-bottom: 20px;" class="product-name">
                       {{$item->name}}
                    </td>
                    <td style="border-left: 1px solid #ddd;
        border-top: 1px solid #ddd;
        padding: 15px;
        text-align: center;" class="cart_quantity product-quantity">
                        {{number_format($item->price)}}
                    </td>
                    <td style="border-left: 1px solid #ddd;
        border-top: 1px solid #ddd;
        padding: 15px;
        text-align: center;" class="product-subtotal">{{$item->qty}}</td>
                    <td style="border-left: 1px solid #ddd;
        border-top: 1px solid #ddd;
        padding: 15px;
        text-align: center;" class="actions">
                        <div style="float: right" class="shopping">
                            <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;" for="coupon_code">Giá tiền:</label>
                            <span class="amount">{{number_format($item->price)}}</span>
                        </div>
                    </td>
                </tr>
                </tbody>
                @endforeach
            </table>
        <ul>
            <li style="color: red">
                <b>Tổng tiền thanh toán: {{number_format($order->total)}} <sup>đ</sup></b>
            </li>
        </ul>
        <br>
        <br>
        <div style="margin: 0% 0% 5% 60%;width: 300px;">
            <h2 style="text-align: center">Người bán hàng</h2>
            <div style="border: 5px solid red; color: red; text-align: center">
                <h3>COLO SHOP</h3>
                <p>Ngày kí: {{$order->created_at}}</p>
            </div>
        </div>
    </div>
</div>

</body>

</html>
