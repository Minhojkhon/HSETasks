<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', 'MainController@index')->name('main.index');


Route::get('/task', 'TaskController@index')->name('tasks.index');
Route::get('/task/create', 'TaskController@create')->name('tasks.create');
Route::post('/task', 'TaskController@store')->name('tasks.store');
Route::get('/task/{task}', 'TaskController@show')->name('tasks.show');
Route::get('/task/{task}/edit', 'TaskController@edit')->name('tasks.edit');
Route::patch('/task/{task}', 'TaskController@update')->name('tasks.update');
Route::delete('/task/{task}', 'TaskController@destroy')->name('tasks.destroy');

Route::get('/task/update', 'TaskController@upsdate');
Route::get('/task/delete', 'TaskController@delete');
Route::get('/task/restore', 'TaskController@restore');
Route::get('/task/firstorcreate', 'TaskController@firstorcreate');
Route::get('/task/updateorcreate', 'TaskController@updateorcreate');

Route::get('/about', 'AboutController@index')->name('about.index');
Route::get('/math', 'MathController@index')->name('math.index');
Route::get('/course', 'CourseController@index')->name('course.index');
Route::get('/user', 'UserController@index')->name('user.index');
Route::get('/contact', 'ContactController@index')->name('contact.index');

Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
