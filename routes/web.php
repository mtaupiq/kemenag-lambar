<?php

use Illuminate\Routing\RouteUri;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FileController;
use App\Http\Controllers\InfoController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\VideoController;
use App\Http\Controllers\ConfigController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\InfographicController;


// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('dashboard.index')->middleware('admin');

// Route user
Route::get('/dashboard/user', [UserController::class, 'index'])->name('dashboard.user.index')->middleware('admin');
Route::post('/dashboard/user/store', [UserController::class, 'store'])->name('user.store')->middleware('admin');
Route::get('/dashboard/user/edit/{user:email}', [UserController::class, 'edit'])->name('user.edit')->middleware('admin');
Route::patch('/dashboard/user/update/{user:email}', [UserController::class, 'update'])->name('user.update')->middleware('admin');
Route::delete('/dashboard/user/destroy/{user:email}', [UserController::class, 'destroy'])->name('user.destroy')->middleware('admin');

//Route Info graphic
Route::get('/dashboard/infographic', [InfographicController::class, 'index'])->name('infographic.index')->middleware('admin');
Route::get('/dashboard/infographic/create', [InfographicController::class, 'create'])->name('infographic.create')->middleware('admin');
Route::post('/dashboard/infographic/store', [InfographicController::class, 'store'])->name('infographic.store')->middleware('admin');
Route::get('/dashboard/infographic/edit/{infographic:title}', [InfographicController::class, 'edit'])->name('infographic.edit')->middleware('admin');
Route::patch('/dashboard/infographic/update/{infographic:title}', [InfographicController::class, 'update'])->name('infographic.update')->middleware('admin');
Route::delete('/dashboard/infographic/destroy/{infographic:title}', [InfographicController::class, 'destroy'])->name('infographic.destroy')->middleware('admin');


//Route Post 
Route::get('/dashboard/post', [PostController::class, 'index'])->name('post.index')->middleware('admin');
Route::get('/dashboard/post/create', [PostController::class, 'create'])->name('post.create')->middleware('admin');
Route::post('/dashboard/post/store', [PostController::class, 'store'])->name('post.store')->middleware('admin');
Route::get('/dashboard/post/edit/{post:slug}', [PostController::class, 'edit'])->name('post.edit')->middleware('admin');
Route::patch('/dashboard/post/update/{post:slug}', [PostController::class, 'update'])->name('post.update')->middleware('admin');
Route::delete('/dashboard/post/destroy/{post:slug}', [PostController::class, 'destroy'])->name('post.destroy')->middleware('admin');
// Route::get('/dashboard/page/detail/{post:slug}', [PostController::class, 'show'])->name('post.show')->middleware('admin');
Route::get('/post/detail/{post:slug}', [PostController::class, 'show'])->name('post.show');
Route::get('/post/all', [PostController::class, 'all'])->name('post.all');

// Route Config
Route::get('/dashboard/config', [ConfigController::class, 'index'])->name('dashboard.index')->middleware('admin');
Route::get('/', [ConfigController::class, 'show'])->name('config.show');
Route::patch('/dashboard/config/update/{config:id}', [ConfigController::class, 'update'])->name('config.update')->middleware('admin');


//Route File
Route::get('/dashboard/file', [FileController::class, 'index'])->name('file.index')->middleware('admin');
Route::get('/dashboard/file/create', [FileController::class, 'create'])->name('file.create')->middleware('admin');
Route::post('/dashboard/file/store', [FileController::class, 'store'])->name('file.store')->middleware('admin');
Route::get('/dashboard/file/edit/{file:title}', [FileController::class, 'edit'])->name('file.edit')->middleware('admin');
Route::patch('/dashboard/file/update/{file:title}', [FileController::class, 'update'])->name('file.update')->middleware('admin');
Route::delete('/dashboard/file/destroy/{file:title}', [FileController::class, 'destroy'])->name('file.destroy')->middleware('admin');


// Route Info/Pengumuman
Route::get('/dashboard/info', [InfoController::class, 'index'])->name('info.index')->middleware('admin');
Route::get('/dashboard/info/create', [InfoController::class, 'create'])->name('info.create')->middleware('admin');
Route::post('/dashboard/info/store', [InfoController::class, 'store'])->name('info.store')->middleware('admin');
Route::get('/dashboard/info/edit/{info:title}', [InfoController::class, 'edit'])->name('info.edit')->middleware('admin');
Route::patch('/dashboard/info/update/{info:title}', [InfoController::class, 'update'])->name('info.update')->middleware('admin');
Route::delete('/dashboard/info/destroy/{info:title}', [InfoController::class, 'destroy'])->name('info.destroy')->middleware('admin');


//Route hero slider
Route::get('/dashboard/slider', [SliderController::class, 'index'])->name('slider.index')->middleware('admin');
Route::get('/dashboard/slider/create', [SliderController::class, 'create'])->name('slider.create')->middleware('admin');
Route::post('/dashboard/slider/store', [SliderController::class, 'store'])->name('slider.store')->middleware('admin');
Route::get('/dashboard/slider/edit/{slider:title}', [SliderController::class, 'edit'])->name('slider.edit')->middleware('admin');
Route::patch('/dashboard/slider/update/{slider:title}', [SliderController::class, 'update'])->name('slider.update')->middleware('admin');
Route::delete('/dashboard/slider/destroy/{slider:title}', [SliderController::class, 'destroy'])->name('slider.destroy')->middleware('admin');

//Route Page
Route::get('/dashboard/page', [PageController::class, 'index'])->name('page.index')->middleware('admin');
Route::get('/dashboard/page/create', [PageController::class, 'create'])->name('page.create')->middleware('admin');
Route::post('/dashboard/page/store', [PageController::class, 'store'])->name('page.store')->middleware('admin');
Route::get('/dashboard/page/edit/{page:slug}', [PageController::class, 'edit'])->name('page.edit')->middleware('admin');
Route::get('/page/detail/{page:slug}', [PageController::class, 'show'])->name('page.show')->middleware('admin');
Route::patch('/dashboard/page/update/{page:slug}', [PageController::class, 'update'])->name('page.update')->middleware('admin');
Route::delete('/dashboard/page/destroy/{page:slug}', [PageController::class, 'destroy'])->name('page.destroy')->middleware('admin');

// Route Menu
Route::get('dashboard/menu', [CategoryController::class, 'index'])->name('category-subcategory.list');
Route::post('dashboard/category-subcategory/save-nested-categories', [CategoryController::class, 'saveNestedCategories'])->name('category-subcategory.save-nested-categories');

Route::get('dashboard/category-subcategory/create', [CategoryController::class, 'create'])->name('category-subcategory.create');
Route::post('dashboard/category-subcategory/save', [CategoryController::class, 'store'])->name('category-subcategory.store');
Route::get('dashboard/category-subcategory/edit/{category_id}', [CategoryController::class, 'edit'])->name('category-subcategory.edit');
Route::get('dashboard/category-subcategory/remove/{category_id}', [CategoryController::class, 'remove'])->name('category-subcategory.remove');

//Route Services
Route::get('/dashboard/service', [ServiceController::class, 'index'])->name('service.index')->middleware('admin');
Route::get('/dashboard/service/create', [ServiceController::class, 'create'])->name('service.create')->middleware('admin');
Route::post('/dashboard/service/store', [ServiceController::class, 'store'])->name('service.store')->middleware('admin');
Route::get('/dashboard/service/edit/{service:title}', [ServiceController::class, 'edit'])->name('service.edit')->middleware('admin');
Route::patch('/dashboard/service/update/{service:title}', [ServiceController::class, 'update'])->name('service.update')->middleware('admin');
Route::delete('/dashboard/service/destroy/{service:title}', [ServiceController::class, 'destroy'])->name('service.destroy')->middleware('admin');

//Route Video
Route::get('/dashboard/video', [VideoController::class, 'index'])->name('video.index')->middleware('admin');
Route::get('/dashboard/video/create', [VideoController::class, 'create'])->name('video.create')->middleware('admin');
Route::post('/dashboard/video/store', [VideoController::class, 'store'])->name('video.store')->middleware('admin');
Route::get('/dashboard/video/edit/{video:title}', [VideoController::class, 'edit'])->name('video.edit')->middleware('admin');
Route::patch('/dashboard/video/update/{video:title}', [VideoController::class, 'update'])->name('video.update')->middleware('admin');
Route::delete('/dashboard/video/destroy/{video:title}', [VideoController::class, 'destroy'])->name('video.destroy')->middleware('admin');

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});

Route::any('{query}', function () {
    return redirect('/');
})->where('query', '.*');
