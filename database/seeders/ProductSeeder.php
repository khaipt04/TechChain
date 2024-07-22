<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $dsSP = [
            [
                "name"=> "Samsung Galaxy S23 FE 5G 128GB",
                "image"=> "638471599704474139_samsung-galaxy-s23--fe-den-dd-AI.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 14890000,
                "sale_price"=> 13390000
            ],
            [
                "name"=> "OPPO Reno11 F 5G 8GB-256GB",
                "image"=> "638493832157161657_oppo-reno11-f-green-1.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 8990000,
                "sale_price"=> 8490000
            ],
            [
                "name"=> "Xiaomi Poco M6 Pro 8GB-256GB",
                "image"=> "638417729562660990_xiaomi-poco-m6-pro-dd-docquyen-bh.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 6490000,
                "sale_price"=> 5990000
            ],
            [
                "name"=> "Samsung Galaxy S23 5G 256GB",
                "image"=> "638518175414796345_samsung-galaxy-s23-5g-thumb-doc-quyen.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 24990000,
                "sale_price"=> 15490000
            ],
            [
                "name"=> "Honor X7b 8GB-256GB",
                "image"=> "638454261816142342_honor-x7b-xanh-6.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 5290000,
                "sale_price"=> 4990000
            ],
            [
                "name"=> "OPPO A18 4GB-128GB",
                "image"=> "638509283036082649_OPPO-A18-thumb.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 3990000,
                "sale_price"=> 3690000
            ],
            [
                "name"=> "iPhone 15 Pro Max 256GB",
                "image"=> "638342502751589917_ip-15-pro-max-dd-bh-2-nam.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 34990000,
                "sale_price"=> 29290000
            ],
            [
                "name"=> "Samsung Galaxy S24 Ultra 5G 256GB",
                "image"=> "638477639726536939_samsung-galaxy-s24-ultra-dd-AI.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 33990000,
                "sale_price"=> 31990000
            ],
            [
                "name"=> "Honor X9B 5G 12GB-256GB",
                "image"=> "638405567889290705_honor-x9b-dd-dq-1.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 8990000,
                "sale_price"=> 8390000
            ],
            [
                "name"=> "OPPO A58 6GB-128GB",
                "image"=> "638265802441511578_oppo-a58-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 4990000,
                "sale_price"=> 4690000
            ],
            [
                "name"=> "Samsung Galaxy Z Flip4 5G 128GB",
                "image"=> "638131739579610504_samsung-galaxy-z-flip4-tim-dd-tragop.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 23990000,
                "sale_price"=> 11990000
            ],
            [
                "name"=> "Tecno Spark Go 2024 4GB-64GB",
                "image"=> "638518773813324397_tecno-spark-go-2024-thumb-thu-cu-2g-100k.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 2190000,
                "sale_price"=> 1990000
            ],
            [
                "name"=> "OPPO A78 8GB-256GB",
                "image"=> "638241536485031136_oppo-a78-den-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 6990000,
                "sale_price"=> 6490000
            ],
            [
                "name"=> "Xiaomi Redmi Note 13 6GB-128GB",
                "image"=> "638421256103594350_xiaomi-redmi-note-13-dd-bh.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 4890000,
                "sale_price"=> 4690000
            ],
            [
                "name"=> "Samsung Galaxy A05s 128GB",
                "image"=> "638352249930121103_samsung-galaxy-a05s-dd-doimay.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 3990000,
                "sale_price"=> 3590000
            ],
            [
                "name"=> "Honor X5 Plus 4GB-64GB",
                "image"=> "638376267641979247_honor-x5-plus-dd-doimoi.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 2790000,
                "sale_price"=> 2490000
            ],
            [
                "name"=> "Samsung Galaxy A23 5G",
                "image"=> "638451444037915753_samsung-galaxy-a23-5g-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 5990000,
                "sale_price"=> 4190000
            ],
            [
                "name"=> "OPPO A17k 3GB-64GB",
                "image"=> "638071502453762468_oppo-a17k-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 3290000,
                "sale_price"=> 2790000
            ],
            [
                "name"=> "Xiaomi Redmi A2 2GB-32GB",
                "image"=> "638475676879245067_xiaomi-redmi-a2-den-dd-bh-thucu.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 2190000,
                "sale_price"=> 1690000
            ],
            [
                "name"=> "Samsung Galaxy Z Fold5 5G 256GB",
                "image"=> "638472349027667377_samsung-galaxy-zfold-5-dd-ai.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 40990000,
                "sale_price"=> 34990000
            ],
            [
                "name"=> "Samsung Galaxy Z Flip5 5G 256GB",
                "image"=> "638472349027667377_samsung-galaxy-zflip-5-dd-ai.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 25990000,
                "sale_price"=> 19990000
            ],
            [
                "name"=> "iPhone 12 64GB",
                "image"=> "638440267786171563_iphone-12-dd-bh.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 17990000,
                "sale_price"=> 11590000
            ],
            [
                "name"=> "iPhone 11 64GB",
                "image"=> "638440266267791271_iphone-11-dd-bh.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 11990000,
                "sale_price"=> 8690000
            ],
            [
                "name"=> "OPPO Reno10 5G 128GB",
                "image"=> "638253719457391276_oppo-reno10-5g-xanh-5.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 9990000,
                "sale_price"=> 8490000
            ],
            [
                "name"=> "OPPO Reno8 T 4G 256GB",
                "image"=> "638155148198300095_oppo-reno8-t-4g-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 8490000,
                "sale_price"=> 6490000
            ],
            [
                "name"=> "Samsung Galaxy A34 5G",
                "image"=> "638241722578403987_samsung-galaxy-a34-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 8490000,
                "sale_price"=> 6490000
            ],
            [
                "name"=> "Honor 90 Lite 5G 8GB-256GB",
                "image"=> "638372867419434789_honor-90-lite-den-dd-100ngadoimoi.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 6490000,
                "sale_price"=> 5490000
            ],
            [
                "name"=> "OPPO A77s 8GB-128GB",
                "image"=> "638071499364966239_oppo-a77s-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 6290000,
                "sale_price"=> 5190000
            ],
            [
                "name"=> "Vivo Y22s 8GB-128GB",
                "image"=> "637983398315589960_vivo-y22s-xanh-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 5990000,
                "sale_price"=> 4990000
            ],
            [
                "name"=> "Honor X8A 8GB-128GB",
                "image"=> "638451449167360007_honor-x8a-dd-docquyen.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 4990000,
                "sale_price"=> 3990000
            ],
            [
                "name"=> "realme C55 6GB-128GB",
                "image"=> "638150119693895777_realme-c55-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 4990000,
                "sale_price"=> 3990000
            ],
            [
                "name"=> "Realme C51 6GB-256GB",
                "image"=> "638423850797799428_realme-c51-dd-doimoi.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 4490000,
                "sale_price"=> 3890000
            ],
            [
                "name"=> "Vivo T1x 4GB-64GB",
                "image"=> "637939995401683559_vivo-t1x-xanh-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 4490000,
                "sale_price"=> 3290000
            ],
            [
                "name"=> "Vivo Y16 4GB-128GB",
                "image"=> "637983383787368693_vivo-y16-vang-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 4490000,
                "sale_price"=> 3290000
            ],
            [
                "name"=> "Samsung Galaxy A04s",
                "image"=> "638204394272841272_samsung-galaxy-a04s-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 3990000,
                "sale_price"=> 2990000
            ],
            [
                "name"=> "OPPO Find N3 5G 16GB-512GB",
                "image"=> "638372781579679832_oppo-find-n3-5g-vang-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 44990000,
                "sale_price"=> 41990000
            ],
            [
                "name"=> "Xiaomi 14 Ultra 16GB-512GB",
                "image"=> "638512907059406867_xiaomi-14-ultra-dd.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 32990000,
                "sale_price"=> 28990000
            ],
            [
                "name"=> "iPhone 14 Pro Max 256GB",
                "image"=> "638007285202545738_iphone-14-pro-max-dd-bh.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 32990000,
                "sale_price"=> 27990000
            ],
            [
                "name"=> "Samsung Galaxy S23 Ultra 5G 256GB",
                "image"=> "638471599704942918_samsung-galaxy-s23-ultra-xanh-dd-AI.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 31990000,
                "sale_price"=> 24990000
            ],
            [
                "name"=> "Samsung Galaxy S24 Plus 5G 256GB",
                "image"=> "638477639726536939_samsung-galaxy-s24-dd-ai.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 26990000,
                "sale_price"=> 24990000
            ],
            [
                "name"=> "iPhone 15 Pro 128GB",
                "image"=> "638342505369309720_ip-15-pro-dd-bh-2-nam.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 28990000,
                "sale_price"=> 24790000
            ],
            [
                "name"=> "iPhone 15 Plus 128GB",
                "image"=> "638342507329455238_ip-15-plus-dd-bh-2-nam.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 25990000,
                "sale_price"=> 22190000
            ],
            [
                "name"=> "Samsung Galaxy S24 5G 256GB",
                "image"=> "638477647082711479_samsung-galaxy-s24-plus-dd-ai.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 22990000,
                "sale_price"=> 21990000
            ],
            [
                "name"=> "Xiaomi 14 12GB-256GB",
                "image"=> "638470498770132071_xiaomi-14-dd-bh.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 22990000,
                "sale_price"=> 20990000
            ],
            [
                "name"=> "iPhone 14 Plus 128GB",
                "image"=> "638440340613418500_iphone-14-plus-dd-bh.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 24990000,
                "sale_price"=> 19390000
            ],
            [
                "name"=> "iPhone 15 128GB",
                "image"=> "638342508308826366_ip-15-dd-bh-2-nam.webp",
                "instock"=>rand(50,100),
                "category_id"=>1,
                "price"=> 22990000,
                "sale_price"=> 19090000
            ]
        ];

        foreach ($dsSP as $sp) {
            Product::create([
                "name"          => $sp['name'],
                "slug"          => Str::slug($sp['name']),
                "image"         => $sp['image'],
                "instock"       => $sp['instock'],
                "category_id"   => $sp['category_id'],
                "price"         => $sp['price'],
                "sale_price"    => $sp['sale_price']
            ]);
        }
    }
}
