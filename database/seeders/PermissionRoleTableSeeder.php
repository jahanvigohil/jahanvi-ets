<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Role;
use App\Models\Permission;

class PermissionRoleTableSeeder extends Seeder
{
    public function run()
    {
        $adminRole = Role::where('name', 'admin')->first();
        $permissions = Permission::all();
        $adminRole->permissions()->sync($permissions);

        $supplierRole = Role::where('name', 'Supplier')->first();
        $permissions = Permission::whereIn('name', ['view suppliers', 'create suppliers', 'update suppliers'])->get();
        $supplierRole->permissions()->sync($permissions);

        $sonsumerRole = Role::where('name', 'Consumer')->first();
        $permissions = Permission::whereIn('name', ['view consumers', 'create consumers', 'update consumers'])->get();
        $sonsumerRole->permissions()->sync($permissions);
    }
}
