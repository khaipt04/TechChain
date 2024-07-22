<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Category:: create([
            "name" => "Điện thoại",
        ]);
        Category:: create([
            "name" => "Máy tính",
        ]);
        Category:: create([
            "name" => "Máy tính bảng",
        ]);
        Category:: create([
            "name" => "Đồng hồ",
        ]);
    }
}
