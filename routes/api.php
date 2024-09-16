<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');

Route::post('/login', [AuthController::class, 'login']);
Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:api');

// User Management Routes
Route::middleware('auth:api')->group(function () {
    Route::get('/users', [UserController::class, 'index']);
    Route::post('/users/{user}/roles/attach', [UserController::class, 'attachRole']);
    Route::post('/users/{user}/roles/detach', [UserController::class, 'detachRole']);
});

// Role Management Routes
Route::middleware('auth:api')->group(function () {
    Route::apiResource('roles', RoleController::class);
});

// Supplier Management Routes
// Route::middleware('auth:api')->group(function () {
//     Route::apiResource('suppliers', SupplierController::class);
// });

// // Consumer Management Routes
// Route::middleware('auth:api')->group(function () {
//     Route::apiResource('consumers', ConsumerController::class);
// });
