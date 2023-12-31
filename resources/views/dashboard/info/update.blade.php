@extends('layouts.core')

@section('content')

<div class="content">
  <div class="container-fluid">
    <div class="card">
      <div class="card-header">
        <h3 class="card-title">Update Pengumuman</h3>
      </div>
              
      <!-- /.card-header -->
      <div class="card-body">
        <form action="{{ route ('info.update', $info->title) }}" method="POST">
            @csrf
            @method('PATCH')

            <div class="form-group row">
              <label for="title" class="col-sm-2 col-form-label">Judul</label>
              <div class="col-sm-10">
              <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" name="title" value="{{ $info->title }}">
              @error('title')
                <p class="text-danger">{{ $message }}</p>
                @enderror
              </div>
            </div>

            <div class="form-group row">
                <label for="link" class="col-sm-2 col-form-label">Link</label>
                <div class="col-sm-10">
                <input type="text" class="form-control @error('link') is-invalid @enderror" id="link" name="link" value="{{ $info->link }}">
                @error('link')
                  <p class="text-danger">{{ $message }}</p>
                  @enderror
                </div>
              </div>
            <div class="footer">
              <button type="submit" class="btn btn-primary">Update</button>
            </div>
          </form>
      </div>
      <!-- /.card-body -->
    <!-- /.card -->
    </div>
  </div>
</div>

@endsection