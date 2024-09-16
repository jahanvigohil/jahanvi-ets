<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function index()
    {
        $currentUser = Auth::user();
        $users = User::where('id', '!=', $currentUser->id)->get();

        return response()->json(
            ['status' => 1],
            ['message' => 'Users fetched successfully'],
            ['data' => $users],
        );
    }

    public function attachRole(Request $request, User $user)
    {
        $user->roles()->attach($request->role_id);
        return response()->json(
            ['status' => 1],
            ['message' => 'Role attached']
        );
    }

    public function detachRole(Request $request, User $user)
    {
        $user->roles()->detach($request->role_id);
        return response()->json(
            ['status' => 1],
            ['message' => 'Role detached']
        );
    }
}
