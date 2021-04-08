<style>
    table.shop_table {
        border-bottom: 1px solid #ddd;
        border-right: 1px solid #ddd;
        margin-bottom: 50px;
        width: 100%;
    }
    table.shop_table th {
        background: none repeat scroll 0 0 #f4f4f4;
        font-size: 15px;
        text-transform: uppercase;
    }
    table.shop_table th, table.shop_table td {
        border-left: 1px solid #ddd;
        border-top: 1px solid #ddd;
        padding: 15px;
        text-align: center;
    }
    .product-name {
        font-size: 25px;
        margin-bottom: 20px;
    }
    td.product-name {
        font-size: 18px;
    }
    table.shop_table th, table.shop_table td {
        border-left: 1px solid #ddd;
        border-top: 1px solid #ddd;
        padding: 15px;
        text-align: center;
    }
    td.actions div.coupon {
        float: left;
    }
    label {
        display: inline-block;
        max-width: 100%;
        margin-bottom: 5px;
        font-weight: 700;
    }
    .cart1 {
        background: none repeat scroll 0 0 #111111;
        border: medium none;
        color: #fff;
        padding: 11px 20px;
        text-transform: uppercase;
    }
    .cart1{
        background: none repeat scroll 0 0 #111111;
        border: medium none;
        color: #fff;
        padding: 11px 20px;
        text-transform: uppercase;
    }
    .input-text, input[type="password"], input[type="email"], textarea {
        border: 1px solid #ddd;
        padding: 10px;
    }
    .quantity input[type="number"] {
        border: 1px solid #111111;
        padding: 5px;
        width: 50px;
    }
    .cart1:hover {
        background-color: #5a88ca;
    }
    .cart1:hover{
        background-color: #5a88ca;
        color: #fff;
    }
</style>
@if(session('cart'))
    @php
        $cart = session('cart');
        $products = $cart->products;
        $totalPrice = $cart->totalPrice;
        $totalQty = $cart->totalQty;
        $discount = $cart->discount;
        $coupon = $cart->coupon;
        $payment = $totalPrice - $discount;
    @endphp
    <h4 class="">Mua sắm ngay nào</h4>
    <form action="{{ route('shop.cart.check-coupon') }}" method="get">
        <div style="float: right;margin-bottom: 10px;" class="coupon">
            <label for="coupon_code">Mã giảm giá:</label>
            <input id="err" type="text" placeholder="Nhập mã giảm giá" value="{{ $coupon }}" id="coupon_code" class="input-text" name="coupon_code">
            <input type="submit" value="Áp dụng" name="apply_coupon" class="cart1">
        </div>
    </form>
    <from class="cart" action="{{ route('shop.cart.check-coupon') }}" method="get">

    <table cellspacing="0" class="shop_table cart">
        <tr>
            @if($errors->any())
                <p  style="text-align: right;color: red;transform: translate(-5px,8px);text-transform: uppercase">Mã giảm giá không được hỗ trợ</p>
            @endif
        </tr>
            <tr>
                <th class="product-remove">&nbsp;</th>
                <th class="product-thumbnail">Ảnh sản phẩm</th>
                <th class="product-name">Sản phẩm</th>
                <th class="product-price">Giá tiền</th>
                <th class="product-quantity">Số lượng</th>
                <th class="product-subtotal">Tổng tiền</th>
            </tr>
            <tbody>
            @foreach($products as $product)
            <tr class="cart-delete cart_item">
                <td class="product-remove">
                    <a class="cart_quantity_delete remove-to-cart" data-id="{{ $product['item']->id }}" ><i class="fa fa-trash-o"></i></a>
                </td>
                <td class="product-thumbnail">
                    <a href=""><img width="145" height="145" alt="{{ $product['item']->name }}" class="shop_thumbnail" src="{{ asset($product['item']->image) }}" pagespeed_url_hash="2028383707" onload="pagespeed.CriticalImages.checkImageForCriticality(this);"></a>
                </td>

                <td class="product-name">
                    <a href="single-product.htm">{{ $product['item']->name }}</a>
                </td>

                <td class="product-price">
                    @if($product['item']->sale==0)
                    <span class="amount">{{ number_format( $product['item']->price)}}</span>
                    @else
                        <span class="amount">{{number_format($product['item']->sale)}}</span>
                    @endif
                </td>

                <td class="cart_quantity product-quantity">
                    <div class="quantity buttons_added">
                        <input min="1" class="cart-plus-minus item-qty" data-id="{{ $product['item']->id }}" data-num="{{ $product['qty'] }}" type="number" name="qty" value="{{ $product['qty'] }}">
                    </div>
                </td>
                <td class="product-subtotal">
                    @if($product['item']->sale==0)
                        <span class="amount">{{ number_format($product['qty'] * $product['item']->price ,0,",",".") }} đ</span>
                    @else

                        <span class="amount">{{ number_format($product['qty'] * $product['item']->sale ,0,",",".") }}
                        đ</span>
                    @endif
                </td>
            </tr>
            @endforeach
            </tbody>
        <td class="actions" colspan="6">
            <div style="float: right" class="shopping">
                <label for="coupon_code">Thanh toán:</label>
                <span class="amount">{{ number_format($payment ,0,",",".") }} đ</span>
            </div>
            <div class="coupon">
                <a style="" class="cart1" href="/">Mua thêm</a>
                <a class="cart1" href="{{ route('shop.cart.destroy') }}">Hủy đơn hàng</a>
            </div>
        </td>
        </table>
    </from>
@section('my_javacript')
    <script type="text/javascript">
        var check = {{ $totalPrice }};
        if(check < 300000){
            $('.btn-default').prop('disabled','disabled');
            $('#err').change(function () {
                $('#errors').css('display','block');
                setTimeout(function () {
                    $('#errors').css('display','none');
                },4000)
            })
        };

        $(function () {

            // xóa sản phẩm khỏi giỏ hàng
            $(document).on("click", '.remove-to-cart', function () {
                var result = confirm("Bạn có chắc chắn muốn xóa sản phẩm này khỏi giỏ hàng ?");
                if (result) {
                    var product_id = $(this).attr('data-id');
                    $.ajax({
                        url: '/dat-hang/xoa-sp-gio-hang/'+product_id,
                        type: 'get',
                        data: {
                            id : product_id
                        }, // dữ liệu truyền sang nếu có
                        dataType: "HTML", // kiểu dữ liệu trả về
                        success: function (response) {
                            $('#my-cart').html(response);
                            location.reload();
                        },
                        error: function (e) { // lỗi nếu có
                            console.log(e.message);
                        }
                    });
                }
            });

            // cập nhật số lượng giỏ hàng
            $(document).on("change", '.item-qty', function () {
                var product_id = $(this).attr('data-id');
                var before_qty = $(this).attr('data-num');
                var qty = $(this).val();

                if (qty == 0) {
                    alert('Nhập số lượng phải lớn hơn 0');
                    $(this).val(before_qty);
                    return false;
                }

                $.ajax({
                    url: '/dat-hang/cap-nhat-gio-hang',
                    type: 'get',
                    data: {
                        id : product_id,
                        qty : qty
                    }, // dữ liệu truyền sang nếu có
                    dataType: "json", // kiểu dữ liệu trả về
                    success: function (response) {
                        console.log(response);
                        // success
                        if (response.status == true) {
                            $('#my-cart').html(response.data);
                        }

                        location.reload();
                    },

                    error: function (e) { // lỗi nếu có
                        console.log(e.message);
                    }

                });

            });
        })
    </script>
@endsection
@else
    <style>
        .buyother {
            display: block;
            overflow: hidden;
            background: #fff;
            line-height: 40px;
            text-align: center;
            margin: 15px auto;
            width: 300px;
            font-size: 14px;
            color: #288ad6;
            font-weight: 600;
            text-transform: uppercase;
            border: 1px solid #288ad6;
            border-radius: 4px;
        }
    </style>
    <h3 class="text-center"><i class="fa fa-opencart"></i>Bạn chưa có sản phẩm nào trong giỏ hàng</h3>
    <a href="/" class="buyother"><i class="fa fa-chevron-left"></i> Về trang chủ</a>
@endif
