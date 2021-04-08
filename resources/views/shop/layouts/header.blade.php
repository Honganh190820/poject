<style>
    .search {
        position: absolute;
        top: 30%;
        right: 5%;
    }
    .search * {
        outline: none;
        box-sizing: border-box;
    }
    .search__wrapper {
        position: relative;
    }
    .search__field {
        width: 15px;
        height: 37px;
        color: transparent;
        font-family: Lato, sans-serif;
        font-size: 1.35em;
        padding: 0.35em 50px 0.35em 0;
        border: 1px solid transparent;
        border-radius: 0;
        cursor: pointer;
        transition: all 0.3s ease-in-out;
    }
    .search__field:focus {
        border-bottom-color: #ccc;
        width: 13vw;
        color: #2b2b2b;
        cursor: default;
    }
    .search__field:focus ~ .search__icon {
        background-color: transparent;
        cursor: pointer;
        pointer-events: auto;
    }
    .search__icon {
        position: absolute;
        top: 0;
        right: 0;
        background-color: #e9f1f4;
        width: 40px;
        height: 40px;
        font-size: 1.18em;
        text-align: center;
        border-color: transparent;
        border-radius: 50%;
        pointer-events: none;
        display: inline-block;
        transition: background-color 0.2s ease-in-out;
    }
    .search__field::-webkit-input-placeholder {
        position: relative;
        top: 0;
        left: 0;
        transition-property: top, color;
        transition-duration: .1s;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -webkit-perspective: 1000;
        perspective: 1000;
    }
    .search__field:-moz-placeholder {
        position: relative;
        top: 0;
        left: 0;
        transition-property: top, color;
        transition-duration: .1s;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -webkit-perspective: 1000;
        perspective: 1000;
    }
    .search__field::-moz-placeholder {
        position: relative;
        top: 0;
        left: 0;
        transition-property: top, color;
        transition-duration: .1s;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -webkit-perspective: 1000;
        perspective: 1000;
    }
    .search__field:-ms-input-placeholder {
        position: relative;
        top: 0;
        left: 0;
        transition-property: top, color;
        transition-duration: .1s;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -webkit-perspective: 1000;
        perspective: 1000;
    }
    .search__field::-webkit-input-placeholder[style*=hidden] {
        color: #83b0c1;
        font-size: .65em;
        font-weight: normal;
        top: -20px;
        opacity: 1;
        visibility: visible !important;
    }
    .search__field:-moz-placeholder[style*=hidden] {
        color: #83b0c1;
        font-size: .65em;
        font-weight: normal;
        top: -20px;
        opacity: 1;
        visibility: visible !important;
    }
    .search__field::-moz-placeholder[style*=hidden] {
        color: #83b0c1;
        font-size: .65em;
        font-weight: normal;
        top: -20px;
        opacity: 1;
        visibility: visible !important;
    }
    .search__field:-ms-input-placeholder[style*=hidden] {
        color: #83b0c1;
        font-size: .65em;
        font-weight: normal;
        top: -20px;
        opacity: 1;
        visibility: visible !important;
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
                        <ul style="padding-right: 155px;" class="navbar_menu">
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
                                <form class="search" action="{{route('shop.search')}}" method="get">
                                    <div class="search__wrapper">
                                        <input type="text" name="" value="{{ isset($keyword) ? $keyword : '' }}" name="tu-khoa" placeholder="Search for" class="search__field">
                                        <button type="submit" class="fa fa-search search__icon"></button>
                                    </div>
                                </form>
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

