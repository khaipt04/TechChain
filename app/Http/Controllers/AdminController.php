<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Comment;
use App\Models\Order;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class AdminController extends Controller
{
    public function dashboard(){
        $soDonHang = Order::count();
        $soSanPham = Product::count();
        $soKhachHang = User::where('role', 'user')->count();
        $doanhThu = Order::where('status', 'success')->sum('total_money');

        $dsDH = Order::orderBy('created_at', 'DESC')->limit(5)->get();
        $dsBL = Comment::orderBy('created_at', 'DESC')->limit(5)->get();

        $tkDoanhThu = Order::where('status', 'success')->groupByRaw('YEAR(created_at), MONTH(created_at)')->selectRaw(
            'YEAR(created_at) as year,
            MONTH(created_at) as month,
            SUM(total_money) as total'
        )->get();
        return view('admin.dashboard', compact('soDonHang', 'soSanPham', 'soKhachHang', 'doanhThu', 'dsDH', 'dsBL', 'tkDoanhThu'));
    }

    public function product(){
        $dsSP = Product::paginate(12);
        $soSanPham = Product::count();
        $soSapHet = Product::where('instock', '<=', 20)->count();
        $soDanhMuc = Category::Count();
        return view('admin.product', compact('dsSP', 'soSanPham', 'soSapHet', 'soDanhMuc'));
    }

    public function productAdd(){
        $dsDM = Category::get();
        return view('admin.product_add', compact('dsDM'));
    }

    public function postproductAdd(Request $request){
        $product = new Product();

        $product->name = $request->name;
        $product->slug = Str::slug($request->name);
        $product->description = $request->description;
        $product->instock = $request->instock;
        $product->description = $request->description;
        $product->category_id = $request->category_id;
        $product->price = $request->price;
        $product->sale_price = $request->sale_price;
        $product->image = '';
        $product->save();

        if($request->hasFile('image')){
            $img = $request->file('image');
            $imgName = "{$product->id}.{$img->getClientOriginalExtension()}";
            $img->move(public_path('images/proudtcs/'), $imgName);
            $product->image = $imgName;
            $product->save();
        }
        if($request->hasFile('images')){
            $imgList = $request->file('images');
            foreach($imgList as $key => $img){
                $imgName = "{$product->id}.$key.{$img->getClientOriginalExtension()}";
                $img->move(public_path('images/proudtcs/'), $imgName);
                $productImage = new ProductImage();
                $productImage->image = $imgName;
                $productImage->product_id = $product->id;
                $productImage->save();
            }
        }
    }
}
