@extends('layout')
@section('title', 'Giỏ Hàng')
@section('body')
    <!-- Shopping Cart -->
    <div class="shopping-cart section">
        <div ng-if='cart.length == 0' class="d-flex align-center justify-content-center">
            <div>
                <h3>Không có sản phẩm nào trong giỏ hàng!</h3>
                <br>
                <a class="btn btn-outline-primary mt-3" href="{{route('home')}}">Tiếp tục mua sắm</a>
            </div>
        </div>
        <div ng-if='cart.length > 0' class="container"> 
            <div class="cart-list-head">
                <!-- Cart List Title -->
                <div class="cart-list-title">
                    <div class="row">
                        <div class="col-lg-1 col-md-1 col-12">

                        </div>
                        <div class="col-lg-4 col-md-3 col-12">
                            <p>Product Name</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Quantity</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Price</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Discount</p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <p>Remove</p>
                        </div>
                    </div>
                </div>
                <!-- End Cart List Title -->
                <!-- Cart Single List list -->
                <div ng-repeat='sp in cart' class="cart-single-list">
                    <div class="row align-items-center">
                        <div class="col-lg-1 col-md-1 col-12">
                            <a href="/detail/@{{sp.slug}}"><img src="{{asset('/')}}images/products/@{{sp.image}}" alt="#"></a>
                        </div>
                        <div class="col-lg-4 col-md-3 col-12">
                            <h5 class="product-name"><a href="/detail/@{{sp.slug}}">
                                @{{sp.name}}</a></h5>
                            {{-- <p class="product-des">
                                <span><em>Type:</em> Mirrorless</span>
                                <span><em>Color:</em> Black</span>
                            </p> --}}
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <div class="count-input">
                                <input ng-change='updateQuantity(sp.id, sp.quantity)' type="number" class="form-control-lg w-50" ng-model='sp.quantity'></input>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <span ng-if='sp.sale_price != null'>
                                <p>@{{sp.sale_price | number}} đ</p>
                                <del>@{{sp.price | number}} đ</del>
                            </span>
                            <span ng-if='sp.sale_price == null'>
                                <p>@{{sp.price | number}} đ</p>
                            </span>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>@{{sp.quantity * ((sp.sale_price!=null)?sp.sale_price:sp.price) | number}} đ</p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <a ng-click='removeFormCart($index)' class="remove-item" href="javascript:void(0)"><i class="lni lni-close"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <form method="POST" action="">
                @csrf
                <div class="row">
                    <div class="col-12">
                        <!-- Total Amount -->
                        <div class="total-amount">
                            <div class="row">
                                <div class="col-lg-8 col-md-6 col-12">
                                    <div class="right checkout-steps-form-style-1">
                                        <h6>Thông tin giao hàng</h6>
                                        <section class="">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="single-form form-default">
                                                        <label>Full Name</label>
                                                        <div class="form-input form">
                                                            <input required type="text" placeholder="Full name" name="fullname" value="{{Auth::check()?Auth::user()->name:''}}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="single-form form-default">
                                                        <label>Phone</label>
                                                        <div class="form-input form">
                                                            <input required type="text" placeholder="Phone" name="phone" value="{{Auth::check()?Auth::user()->phone:''}}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="single-form form-default">
                                                        <label>Email Address</label>
                                                        <div class="form-input form">
                                                            <input required type="email" placeholder="Email Address" name="email" value="{{Auth::check()?Auth::user()->email:''}}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="single-form form-default">
                                                        <label>Address</label>
                                                        <div class="form-input form">
                                                            <input required type="text" placeholder="Address" name="address" value="{{Auth::check()?Auth::user()->address:''}}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <input type="checkbox" id="agree" name="agree" required>
                                                    <label class="mt-3" for="agree">
                                                        <p>Tôi Đã đọcw và đồng ý tất cả các điều khoản của shop</p>
                                                    </label>
                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="right">
                                        <ul>
                                            <li>Cart Total<span>@{{totalCartMoney() | number}} đ</span></li>
                                            {{-- <li>Shipping<span>Free</span></li>
                                            <li>You Save<span>$29.00</span></li>
                                            <li class="last">You Pay<span>$2531.00</span></li> --}}
                                        </ul>
                                        <div class="button">
                                            <button type="submit" class="btn">Checkout</button>
                                            <a href="product-grids.html" class="btn btn-alt">Continue shopping</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/ End Total Amount -->
                    </div>
                </div>
            </form>  
        </div>
    </div>
@endsection
@section('viewFunction')
    <script>
        viewFunction = function($scope, $http){
            $scope.updateQuantity = function(id, quantity){
                $http.patch('/api/cart/'+id, {
                    quantity: quantity
                }).then(function(res){
                    // $scope.$parent.cart = res.data.data;
                });
            }
        }
    </script>
@endsection
