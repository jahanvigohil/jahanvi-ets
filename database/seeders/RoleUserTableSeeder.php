<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Role;

class RoleUserTableSeeder extends Seeder
{
    public function run()
    {
        $admin = User::find(1);
        $admin->roles()->attach(Role::where('name', 'admin')->first());

        $manager = User::find(2);
        $manager->roles()->attach(Role::where('name', 'manager')->first());
    }
}
