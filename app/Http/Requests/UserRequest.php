<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    public function rules()
    {
        return [
            'firstname' => ['required', 'string', 'alpha'],
            'lastname' => ['required', 'string', 'alpha'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'contact_number' => ['required', 'string', 'max:15'],
            'postcode' => ['required', 'string', 'max:10'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            'state_id' => ['nullable', 'exists:states,id'],
            'city_id' => ['nullable', 'exists:cities,id'],
            'profile_picture' => ['nullable', 'max:2048'],
            'hobbies' => ['nullable', 'array'],
            'hobbies.*' => ['string'],
            'gender' => ['required', 'in:male,female'],
            'roles' => ['nullable', 'array'],
            'roles.*' => ['exists:roles,id'],
            'hobbies' => 'array', // Ensure hobbies is an array
            'hobbies.*' => 'string' // Each hobby should be a string
        ];
    }
}
