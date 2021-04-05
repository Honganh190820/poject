<?php

namespace App\Http\Controllers;

use App\Coupon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
class CouponController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $coupons = Coupon::latest()->paginate(10);// lấy toàn bộ dữ liệu
        // gọi đến view
        return view('admin.coupon.index', [
            'coupons' => $coupons // truyền dữ liệu sang view Index
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $coupons = Coupon::all();
        return view('admin.coupon.create', [
            'coupons' => $coupons,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validate
//        $validatedData = $request->validate([
//            'name' => 'bail|required|max:255',
//            'email' => 'bail|required|email',
//            'password' => 'bail|required|min:6',
//            'avatar' => 'bail|image|mimes:jpeg,png,jpg,gif,svg|max:10000'
//        ],[
//            'name.required'=> 'Tên không được để trống',
//            'email.required'=> 'Email không được để trống',
//            'password.required'=> 'Password tối thiểu 6 kí tự',
//            'avatar.image'=> 'Ảnh không đúng định dạng'
//        ]);

        $type = 0;
        if ($request->has('type')) { // kiem tra is_active co ton tai khong?
            $type = $request->input('type');
        }
        //luu vào csdl
        $coupon = new Coupon();
        $coupon->code = $request->input('code'); // họ tên
        $coupon->percent = $request->input('percent'); // email
        $coupon->type = $type;
        $coupon->save();

        // chuyen dieu huong trang
        return redirect()->route('admin.coupon.index');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // Sử dụng hàm findorFail tìm kiếm theo Id, nếu tìm thấy sẽ trả về object , nếu không trả về lỗi
        $coupon = Coupon::findorFail($id);

        return view('admin.coupon.edit', [
            'coupon' => $coupon
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $coupon = Coupon::findorFail($id);
        $type = 0;
        // Trạng thái
        if ($request->has('type')){//kiem tra is_active co ton tai khong?
            $type->type = $request->input('type');
        }
        //luu vào csdl
        $coupon->code = $request->input('code'); // họ tên
        $coupon->percent = $request->input('percent'); // email
        $coupon->save();

        // chuyen dieu huong trang
        return redirect()->route('admin.coupon.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // gọi tới hàm destroy của laravel để xóa 1 object
        Coupon::destroy($id);

        // Trả về dữ liệu json và trạng thái kèm theo thành công là 200
        return response()->json([
            'status' => true
        ], 200);
    }
}
