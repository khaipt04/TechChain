@extends('layout')
@section('title')
    {{$sp->name}}
@endsection
@section('body')
    <!-- Start Item Details -->
    <section class="item-details section">
        <div class="container">
            <div class="top-area">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="product-images">
                            <div id="product-images" class="carousel slide">
                                <div class="carousel-inner">
                                  <div class="carousel-item active">
                                    <img src="{{asset('/')}}images/products/{{$sp->image}}" class="d-block w-100" alt="...">
                                  </div>
                                  @foreach ($sp->images as $item)
                                  <div class="carousel-item">
                                    <img src="{{asset('/')}}images/products/{{$item->image}}" class="d-block w-100" alt="...">
                                  </div>
                                  @endforeach
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#product-images" data-bs-slide="prev">
                                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                  <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#product-images" data-bs-slide="next">
                                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                  <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                            <main id="gallery">
                                {{-- <div class="main-img">
                                    <img src="{{asset('/')}}images/products/{{$sp->image}}" id="current" alt="#">
                                </div> --}}
                                <div class="images">
                                    <img data-bs-target="#product-images" data-bs-slide-to="0" src="{{asset('/')}}images/products/{{$sp->image}}" id="img" alt="#">
                                    @php $i=1; @endphp
                                    @foreach ($sp->images as $item)
                                        <img data-bs-target="#product-images" data-bs-slide-to="{{$i++}}" src="{{asset('/')}}images/products/{{$item->image}}" class="img" alt="#">
                                    @endforeach
                                </div>
                            </main>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="product-info">
                            <h2 class="title">{{$sp->name}}</h2>
                            <p class="category"><i class="lni lni-tag"></i> Category:<a href="javascript:void(0)">
                                {{$sp->category->name}}  
                            </a></p>
                            <h3 class="price">
                                @if (isset($sp->sale_price))
                                    {{number_format($sp->sale_price)}}
                                    <span>{{number_format($sp->price)}}</span>
                                @else
                                    {{number_format($sp->price)}}
                                @endif
                                
                            </h3>
                            <p class="info-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                tempor incididunt
                                ut labore et dolore magna aliqua.</p>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-12">
                                    <div class="form-group quantity">
                                        <label for="color">Quantity</label>
                                        <input ng-model='quantity' type="number" class="form-control" value="1" min="1" max="{{$sp->instock}}">
                                    </div>
                                </div>
                            </div>
                            <div class="bottom-content">
                                <div class="row align-items-end">
                                    <div class="col-12">
                                        <div class="button cart-button">
                                            <button ng-click="addToCart({{$sp->id}}, quantity)" class="btn" style="width: 100%;">Add to Cart</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-details-info">
                {{-- <h4>Details</h4> --}}
                <div class="single-block">
                    <h4>Details</h4>
                    {{$sp->description}}
                </div>
                <div class="row">
                    <div class="col-lg-4 col-12">
                        <div class="single-block give-review">
                            <h4>{{$sp->rating}} (Overall)</h4>
                            <ul>
                                <li>
                                    <span>5 stars - 38</span>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star-filled"></i>
                                </li>
                                <li>
                                    <span>4 stars - 10</span>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star"></i>
                                </li>
                                <li>
                                    <span>3 stars - 3</span>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star"></i>
                                    <i class="lni lni-star"></i>
                                </li>
                                <li>
                                    <span>2 stars - 1</span>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star"></i>
                                    <i class="lni lni-star"></i>
                                    <i class="lni lni-star"></i>
                                </li>
                                <li>
                                    <span>1 star - 0</span>
                                    <i class="lni lni-star-filled"></i>
                                    <i class="lni lni-star"></i>
                                    <i class="lni lni-star"></i>
                                    <i class="lni lni-star"></i>
                                    <i class="lni lni-star"></i>
                                </li>
                            </ul>
                            <!-- Button trigger modal -->
                            @auth
                                <button type="button" class="btn review-btn" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                                Leave a Review
                                </button>
                            @endauth
                            @guest
                                <div class="alert alert-info">
                                    <a href="{{route('login')}}">ĐĂNG NHẬP ĐỂ ĐÁNH GIÁ</a>
                                </div>
                            @endguest
                        </div>
                    </div>
                    <div class="col-lg-8 col-12">
                        <div class="single-block">
                            <div class="reviews">
                                <h4 class="title">Latest Reviews</h4>
                                <!-- Start Single Review -->
                                <div ng-repeat="bl in dsBL" class="single-review">
                                    <img src="assets/images/blog/comment1.jpg" alt="#">
                                    <div class="review-info">
                                        <h4>@{{bl.user_fullname}}
                                            <span>@{{bl.created_at | date:'dd/MM/yyyy HH:mm:ss'}}
                                            </span>
                                        </h4>
                                        <ul class="stars">
                                            <li ng-show="bl.rating>=1"><i class="lni lni-star-filled"></i></li>
                                            <li ng-show="bl.rating>=2"><i class="lni lni-star-filled"></i></li>
                                            <li ng-show="bl.rating>=3"><i class="lni lni-star-filled"></i></li>
                                            <li ng-show="bl.rating>=4"><i class="lni lni-star-filled"></i></li>
                                            <li ng-show="bl.rating==5"><i class="lni lni-star-filled"></i></li>
                                            <li ng-show="bl.rating<5"><i class="lni lni-star"></i></li>
                                            <li ng-show="bl.rating<4"><i class="lni lni-star"></i></li>
                                            <li ng-show="bl.rating<3"><i class="lni lni-star"></i></li>
                                            <li ng-show="bl.rating<2"><i class="lni lni-star"></i></li>
                                            <li ng-show="bl.rating<1"><i class="lni lni-star"></i></li>
                                        </ul>
                                        <p>@{{bl.content}}</p>
                                    </div>
                                </div>
                                <!-- End Single Review -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Item Details -->

    <!-- Review Modal -->
    <div class="modal fade review-modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Leave a Review</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="review-rating">Rating</label>
                                <select ng-model="rating" class="form-control" id="review-rating">
                                    <option value="5">5 Stars</option>
                                    <option value="4">4 Stars</option>
                                    <option value="3">3 Stars</option>
                                    <option value="2">2 Stars</option>
                                    <option value="1">1 Star</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="review-message">Review</label>
                        <textarea ng-model="content" class="form-control" id="review-message" rows="8" required></textarea>
                    </div>
                </div>
                <div class="modal-footer button">
                    <button ng-click="sendComment()" type="button" class="btn">Submit Review</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Review Modal -->
@endsection
@section('viewFunction')
    <script>
        viewFunction = function($scope, $http){
            $scope.quantity = 1;
            $scope.dsBL = [];
            $scope.getComment = function(){
                $http.get('/api/comments/product/{{$sp->id}}').then(
                function(res){//thanh cong
                    $scope.dsBL = res.data.data;
                    console.log($scope.dsBL);
                },
                function(res){//that bai

                }
                );
            }
            $scope.getComment();
            $scope.sendComment = function(){
                $http.post('/api/comments', {
                    'product_id': {{$sp->id}},
                    'content': $scope.content,
                    'rating': $scope.rating
                }).then(
                    function(res){
                        document.querySelector('.btn-close').click();
                        $scope.content = '';
                        $scope.rating = 5;
                        $scope.getComment();
                    }
                )
            }
        }
        
    </script>
@endsection