<?php

use Illuminate\Database\Seeder;
use App\Entities\NewsType;

class NewsTypeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'id' => 1,
                'description' => 'Salud',
            ],
            [
                'id' => 2,
                'description' => 'Politica',
            ],
            [
                'id' => 3,
                'description' => 'Finanzas',
            ]
        ];

        foreach ( $data as $dd )
        {
            $user = NewsType::find($dd['id']);

            if ( !isset($user->id) )
                NewsType::create($dd);
        }
    }
}
