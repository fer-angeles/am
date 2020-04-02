<?php

use Illuminate\Database\Seeder;
use App\Entities\User;

class UsersTableSeeder extends Seeder
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
                'name' => 'fernando',
                'email' => 'fer@fer.com',
                'user_type' => 1,
                'password' => bcrypt('123456')
            ]
        ];

        foreach ( $data as $dd )
        {
            $user = User::find($dd['id']);

            if ( !isset($user->id) )
                User::create($dd);
        }

    }
}
