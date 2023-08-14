@extends('layouts.core')

@section('content')

<div class="content">
  <div class="container-fluid">
    <div class="card">
      <div class="card-header">
        <h3 class="card-title">Tambah Hero Slide</h3>
      </div>
              
      <!-- /.card-header -->
      <div class="card-body">
        <form action="{{ route ('slider.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group row">
              <label for="title" class="col-sm-2 col-form-label">Title</label>
              <div class="col-sm-10">
              <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" name="title" value="{{ old('title') }}">
              @error('title')
                <p class="text-danger">{{ $message }}</p>
                @enderror
              </div>
            </div>

            <div class="form-group row">
                <label for="caption" class="col-sm-2 col-form-label">Caption</label>
                <div class="col-sm-10">
                <input type="text" class="form-control @error('caption') is-invalid @enderror" id="caption" name="caption" value="{{ old('caption') }}">
                @error('caption')
                  <p class="text-danger">{{ $message }}</p>
                  @enderror
                </div>
              </div>

              <div class="form-group row">
                <label for="exampleFormControlFile1" class="col-sm-2 col-form-label">Upload Image</label>
                <div class="col-sm-10">
                    <input type="file" name="image" class="form-control-file @error('image') is-invalid @enderror" id="exampleFormControlFile1">
                    @error('image')
                    <p class="text-danger">{{ $message }}</p>
                    @enderror
                </div>
              </div>

            <div class="form-group row">
                <label for="link" class="col-sm-2 col-form-label">Link</label>
                <div class="col-sm-10">
                <input type="text" class="form-control @error('link') is-invalid @enderror" id="link" name="link" value="{{ old('link') }}">
                @error('link')
                  <p class="text-danger">{{ $message }}</p>
                  @enderror
                </div>
              </div>
            <div class="footer">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </form>
      </div>
      <!-- /.card-body -->
    <!-- /.card -->
    </div>
  </div>
</div>

@endsection