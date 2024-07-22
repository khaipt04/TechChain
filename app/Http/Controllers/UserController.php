<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function login(){
        return view("user.login");
    }
    public function postlogin(Request $request){
        $email = $request->input("email");
        $password = $request->input("password");
        $remember = $request->input("remember");

        $user = User::where("email", $email)->first();
        $canLogin = false;
        if(isset($user)){
            $canLogin = Hash::check($password, $user->password);
        }
        if($canLogin){
            Auth::login($user, $remember);
            return redirect()->route("home");
        }else{
            session()->put("message","Email hoặc mật khẩu không chính xác!");
            return back();
        }
    }

    public function register(){
        return view("user.register");
    }
    public function postregister(Request $request){
        $name = $request->input("name");
        $email = $request->input("email");
        $password = $request->input("password");
        $repassword = $request->input("repassword");

        $user = User::where("email", $email)->first();

        if(isset($user)){
            session()->put("message","Email đã tồn tại!");
            return back();
        }
        if($password != $repassword){
            session()->put("message","Mật khẩu không trùng khớp!");
            return back();
        }

        $user = new User();
        $user->name = $name;
        $user->email = $email;
        $user->password = $password;

        $user->save();
        return redirect()->route("login");
    }
}
