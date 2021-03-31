<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    protected $table = 'coupons';
    // DN quan he dl
    public function user()
    {
        return $this->belongsTo('App\User');
    }

}
