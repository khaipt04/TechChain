<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    //
    public function detail($slug){
        $sp = Product::where("slug", $slug)->first();
        return view("product.detail",compact(["sp"]));
    }
}
