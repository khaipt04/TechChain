<?php

namespace Database\Seeders;

use App\Models\Comment;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CommentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Comment::insert([
            [
                "user_id"=> 1,
                "product_id"=> 1,
                "content"=> 'Good',
                "rating"=>5,
                'created_at'=> now(),
            ],
            [
                "user_id"=> 2,
                "product_id"=> 1,
                "content"=> 'Chất lượng tốt',
                "rating"=>5,
                'created_at'=> now(),
            ],
            [
                "user_id"=> 1,
                "product_id"=> 1,
                "content"=> 'Tạm ổn',
                "rating"=>5,
                'created_at'=> now(),
            ],
            [
                "user_id"=> 2,
                "product_id"=> 1,
                "content"=> 'Tuỵt vời :D',
                "rating"=>5,
                'created_at'=> now(),
            ]
        ]);
    }
}
