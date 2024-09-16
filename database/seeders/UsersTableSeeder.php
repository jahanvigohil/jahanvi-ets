<?php

namespace Database\Seeders;

use App\Models\City;
use App\Models\State;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $state = State::inRandomOrder()->first();
        $city = City::where('state_id', $state->id)->inRandomOrder()->first();

        // Sample hobbies
        $hobbies1 = json_encode(['reading', 'traveling']);
        $hobbies2 = json_encode(['cooking', 'cycling']);

        User::create([
            'firstname' => 'Jahanvi',
            'lastname' => 'Gohil',
            'email' => 'jahanvigohil@example.com',
            'contact_number' => '9898989898',
            'postcode' => '395007',
            'gender' => 'female',
            'password' => Hash::make('12345678'),
            'state_id' => $state ? $state->id : null,
            'city_id' => $city ? $city->id : null,
            'hobbies' => $hobbies1,
        ]);

        User::create([
            'firstname' => 'Jane',
            'lastname' => 'Doe',
            'email' => 'jane.doe@example.com',
            'contact_number' => '0987654321',
            'postcode' => '654321',
            'gender' => 'male',
            'password' => Hash::make('12345678'),
            'state_id' => $state ? $state->id : null,
            'city_id' => $city ? $city->id : null,
            'hobbies' => $hobbies2,
        ]);
    }
}
