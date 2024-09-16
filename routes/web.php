<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ConsumerController;
use App\Http\Controllers\ExportController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SupplierController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', [AuthController::class, 'index'])->name('home');

// Authentication Routes
Route::get('/register', [AuthController::class, 'showRegistrationForm'])->name('register.form');
Route::post('/register', [AuthController::class, 'register'])->name('register');

Route::get('/login', [AuthController::class, 'loginForm'])->name('login');

// Role Management Routes
Route::resource('roles', RoleController::class);

Route::resource('permissions', PermissionController::class);


Route::group(['middleware' => ['role:admin']], function () {
    Route::resource('suppliers', SupplierController::class);

    Route::resource('consumers', ConsumerController::class);
});

// Export Routes
Route::get('/export/csv', [ExportController::class, 'exportCsv'])->name('export.csv');
Route::get('/export/excel', [ExportController::class, 'exportExcel'])->name('export.excel');
Route::get('/export/pdf', [ExportController::class, 'exportPdf'])->name('export.pdf');

// Location Routes (City AJAX Dropdown)
Route::get('/cities', [AuthController::class, 'getCities']);

// Logout Route
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');