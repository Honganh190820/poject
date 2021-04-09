<style>
    #custom-search-form {
        margin:0;
        margin-top: 10px;
        padding: 0;
    }

    #custom-search-form .search-query {
        padding-right: 3px;
        padding-right: 4px \9;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */

        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }

    #custom-search-form button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: relative;
        left: -28px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }

    .search-query:focus + button {
        z-index: 3;
    }
</style>
<header class="header trans_300">

    <!-- Top Navigation -->

    <div class="top_nav">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="top_nav_left">Coloshop@gmail.com</div>
                </div>
                <div class="col-md-6 text-right">
                    <div class="top_nav_right">
{{--                        <form class="search" action="{{route('shop.search')}}" method="get">--}}
{{--                            <div class="search__wrapper">--}}
{{--                                <input type="text" name="" value="{{ isset($keyword) ? $keyword : '' }}" name="tu-khoa" placeholder="Search for" class="search__field">--}}
{{--                                <button type="submit" class="fa fa-search search__icon"></button>--}}
{{--                            </div>--}}
{{--                        </form>--}}
                        <form action="{{route('shop.search')}}" method="get" id="custom-search-form" class="form-search form-horizontal pull-right">
                            <div class="input-append span12">
                                <input type="text" value="{{ isset($keyword) ? $keyword : '' }}" name="tu-khoa" class="search-query" placeholder="Bạn muốn tìm gì...">
                                <button type="submit" class="btn"><i class="icon-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Navigation -->

    <div class="main_nav_container">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-right">
                    <div class="logo_container">
{{--                        <a href="/"><img width="121px" src="{{asset($setting->image)}}" alt=""></a>--}}

                        <a href="/">colo<span>shop</span></a>
                    </div>
                    <nav class="navbar">
                        <ul style="" class="navbar_menu">
                            <li><a href="/">Trang chủ</a></li>
                            @foreach($categories as $item)
                                @if($item->parent_id == 0)
                            <li><a href="{{route('shop.products_by_category', ['slug' => $item->slug])}}">{{$item->name}}</a></li>
                                @endif
                            @endforeach
                            <li><a href="/bai-viet#article">Bài viết</a></li>
                            <li><a href="/lien-he#contact">Liên Hệ</a></li>

                        </ul>

                        <ul class="navbar_user">
                            <li class="nav-item">

                            </li>
                            <li style="margin-right: -25px;" class="checkout">
                                <a href="/dat-hang#my_cart">
                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                    @if(session('cart'))
                                    <span id="checkout_items" class="checkout_items">
                                        <span id="total-qty" class="" style="margin: 5px"> {{session('cart')->totalQty }} </span>
                                    </span>
                                    @endif
                                </a>
                            </li>
                        </ul>
                        <div class="hamburger_container">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>

