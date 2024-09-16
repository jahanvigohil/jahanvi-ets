<?php

namespace Database\Seeders;

use App\Models\Consumer;
use App\Models\Supplier;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ConsumersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $supplierA = Supplier::where('name', 'Supplier A')->first();
        $supplierB = Supplier::where('name', 'Supplier B')->first();

        Consumer::create(['name' => 'Consumer X', 'supplier_id' => $supplierA->id]);
        Consumer::create(['name' => 'Consumer Y', 'supplier_id' => $supplierA->id]);
        Consumer::create(['name' => 'Consumer Z', 'supplier_id' => $supplierB->id]);
    }
}
