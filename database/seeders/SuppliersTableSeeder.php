<?php

namespace Database\Seeders;

use App\Models\Supplier;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SuppliersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Supplier::create(['name' => 'Supplier A']);
        Supplier::create(['name' => 'Supplier B']);
        Supplier::create(['name' => 'Supplier C']);
    }
}
