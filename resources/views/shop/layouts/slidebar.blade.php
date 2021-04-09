
<!-- Slider -->
@foreach($banners as $item)
<div class="main_slider" style="overflow: hidden;">
    <a href=""><img style="width: 100%" src="{{asset($item->image)}}" alt=""></a>
</div>
@endforeach
<!-- Banner -->


