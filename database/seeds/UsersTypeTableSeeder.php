<?php

use Illuminate\Database\Seeder;
use App\Entities\UserType;

class UsersTypeTableSeeder extends Seeder
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
                'type' => 'root'
            ],
            [
                'id' => 2,
                'type' => 'admin'
            ]
        ];

        foreach ( $data as $dd)
        {
            $type = UserType::find($dd['id']);

            if ( !isset($type->id) )
                UserType::create($dd);
        }

    }
}
