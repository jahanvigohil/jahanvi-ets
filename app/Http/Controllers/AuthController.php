<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Laravel\Passport\Token;
use Illuminate\Validation\ValidationException;
use App\Http\Requests\UserRequest;
use App\Models\City;
use App\Models\Role;
use App\Models\State;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function index()
    {   
        return view('dashboard');
    }

    public function loginForm()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $validated = $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if (!Auth::attempt($validated)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect.'],
            ]);
        }

        $user = Auth::user();
        $token = $user->createToken('LaravelApp')->accessToken;

        return response()->json([
            'token' => $token,
            'user' => $user
        ]);
    }

    public function logout(Request $request)
    {
        $token = $request->user()->token();
        $token->revoke();

        return response()->json(['message' => 'Logged out successfully']);
    }

    public function showRegistrationForm()
    {
        $roles = Role::all();
        $states = State::all();
        return view('auth.register', compact('roles', 'states'));
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'firstname' => ['required', 'string', 'alpha'],
            'lastname' => ['required', 'string', 'alpha'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'contact_number' => ['required', 'string', 'max:15'],
            'postcode' => ['required', 'string', 'max:10'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            'state_id' => ['nullable', 'exists:states,id'],
            'city_id' => ['nullable', 'exists:cities,id'],
            'profile_picture' => ['nullable', 'file', 'image', 'max:2048'],
            'hobbies' => ['array'],
            'hobbies.*' => ['string'],
            'gender' => ['required', 'in:male,female'],
            'roles' => ['array'],
            'roles.*' => ['exists:roles,id'],
        ]);
    }

    public function register(UserRequest $request)
    {
        // Handle file upload
        $profilePicturePaths = [];
        if ($request->hasFile('profile_picture')) {
            foreach ($request->file('profile_picture') as $file) {
                // Ensure the file is an instance of UploadedFile
                if ($file->isValid()) {
                    // Store the file and add its path to the array
                    $profilePicturePaths[] = $file->store('profile_pictures', 'public');
                }
            }
        }
        
        $user = User::create([
            'firstname' => $request->firstname,
            'lastname' => $request->lastname,
            'email' => $request->email,
            'contact_number' => $request->contact_number,
            'postcode' => $request->postcode,
            'password' => Hash::make($request->password),
            'profile_picture_paths' => json_encode($profilePicturePaths), // Store file paths as JSON
            'state_id' => $request->state_id,
            'city_id' => $request->city_id,
            'hobbies' => $request->hobbies ? json_encode($request->hobbies) : null,
            'gender' => $request->gender
        ]);
    
        // Attach roles to the user
        $user->roles()->sync($request->roles);
    
        // Return JSON response for AJAX
        return response()->json([
            'message' => 'Registration successful!',
            'redirect_url' => route('home') // Adjust this as needed
        ]);
    }


    public function getCities(Request $request)
    {
        $cities = City::where('state_id', $request->state_id)->get();
        return response()->json($cities);
    }
}
