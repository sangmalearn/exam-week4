<?php

use App\Http\Controllers\ContactsController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/contacts',[ContactsController::class,'index'])->name('contacts.index');
Route::get('/contacts/create', [ContactsController::class, 'create'])->name('contacts.create');
Route::post('/contacts', [ContactsController::class, 'store'])->name('contacts.store');
Route::get('/contacts/{id}', [ContactsController::class, 'show'])->name('contacts.show');
Route::get('/contacts/{id}/edit', [ContactsController::class, 'edit'])->name('contacts.edit');
Route::put('/contacts/{id}', [ContactsController::class, 'update'])->name('contacts.update');
Route::delete('/contacts/{id}', [ContactsController::class, 'destroy'])->name('contacts.destroy');

