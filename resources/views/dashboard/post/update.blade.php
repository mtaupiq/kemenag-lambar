@extends('layouts.core')

@section('content')

<div class="content">
  <div class="container-fluid">
    <div class="card card-info">
        <div class="card-header">
          <h3 class="card-title">Kabar Terkini</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form class="form-horizontal" action="{{ route ('post.update', $post->slug) }}" method="POST" enctype="multipart/form-data">
          @csrf
          @method('PATCH')
          <div class="card-body">
            <div class="form-group row">
              <label for="title" class="col-sm-2 col-form-label">Judul</label>
              <div class="col-sm-10">
                <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" id="title" value="{{ $post->title }}">
                @error('title')
                <p class="text-danger">{{ $message }}</p>
                @enderror
              </div>
            </div>

            <div class="form-group row">
              <label for="title" class="col-sm-2 col-form-label">Kategori</label>
              <div class="col-sm-4">
                <select name="category_id" id="kategori" class="form-control">
                  @foreach ($categories as $category)
                      <option value="{{ $category->id }}">{{ $category->name }}</option>
                  @endforeach
                </select>
                @error('category_name')
                <p class="text-danger">{{ $message }}</p>
                @enderror
              </div>
            </div>

            <div class="form-group row">
              <label for="description" class="col-sm-2 col-form-label">Deskripsi</label>
              <div class="col-sm-10">
                <textarea name="body" class="my-editor form-control @error('body') is-invalid @enderror" id="my-editor" cols="30" rows="10">{{ $post->body }}</textarea>
                @error('body')
                <p class="text-danger">{{ $message }}</p>
                @enderror
              </div>
            </div>

            <div class="form-group row">
              <label for="exampleFormControlFile1" class="col-sm-2 col-form-label">Thumbnail</label>
              <div class="col-sm-10">
                  <input type="file" name="image" class="form-control-file @error('image') is-invalid @enderror" id="exampleFormControlFile1" value="{{ $post->image }}">
                  <img src="{{ asset('storage/'.$post->image) }}" alt="" width="200" class="mt-3">
                  @error('image')
                  <p class="text-danger">{{ $message }}</p>
                  @enderror
              </div>
            </div>

            <div class="form-group row">
              <label for="title" class="col-sm-2 col-form-label">Status</label>
              <div class="col-sm-4">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="status" id="inlineRadio1" value="0">
                  <label class="form-check-label" for="inlineRadio1">Aktiv</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="status" id="inlineRadio2" value="1">
                  <label class="form-check-label" for="inlineRadio2">Non Aktiv</label>
                </div>
                @error('title')
                <p class="text-danger">{{ $message }}</p>
                @enderror
              </div>
            </div>
            
          </div>
          <!-- /.card-body -->
          <div class="card-footer">
            <button type="submit" class="btn btn-info">Submit</button>
          </div>
          <!-- /.card-footer -->
        </form>
      </div>
  </div>
</div>

<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
<script>
  var options = {
    filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
    filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
    filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
    filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
  };
</script>
<script>
    CKEDITOR.replace('my-editor', options);
    </script>
@endsection
