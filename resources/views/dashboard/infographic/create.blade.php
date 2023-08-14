@extends('layouts.core')

@section('content')

<div class="content">
  <div class="container-fluid">
    <div class="card">
      <div class="card-header">
        <h3 class="card-title">Tambah Infografis</h3>
      </div>
              
      <!-- /.card-header -->
      <div class="card-body">
        <form action="{{ route ('infographic.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
              <label for="title" class="col-form-label">Judul :</label>
              <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" name="title" value="{{ old('title') }}">
              @error('title')
                <p class="text-danger">{{ $message }}</p>
                @enderror
            </div>
            <div class="form-group">
                <label for="exampleFormControlFile1">Upload Image</label>
                <input type="file" name="image" class="form-control-file @error('image') is-invalid @enderror" id="exampleFormControlFile1">
                @error('image')
                <p class="text-danger">{{ $message }}</p>
                @enderror
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