<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Permission;

class PermissionsTableSeeder extends Seeder
{
    public function run()
    {
        Permission::create(['name' => 'view suppliers']);
        Permission::create(['name' => 'create suppliers']);
        Permission::create(['name' => 'update suppliers']);
        Permission::create(['name' => 'delete suppliers']);
        Permission::create(['name' => 'view consumers']);
        Permission::create(['name' => 'create consumers']);
        Permission::create(['name' => 'update consumers']);
        Permission::create(['name' => 'delete consumers']);
    }
}