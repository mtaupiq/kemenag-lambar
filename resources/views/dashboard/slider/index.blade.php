@extends('layouts.core')

@section('content')

<div class="content">
  <div class="container-fluid">
    @if(Session::has('message'))
              <div class="alert alert-info">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <p><i class="icon fas fa-check"></i>{{ Session::get('message') }}</p>
              </div>
              @endif
    <div class="card">
      <div class="card-header">
        <h3 class="card-title">Hero Slider</h3>
        <a href="{{ route('slider.create') }}">
            <button type="button" class="btn btn-primary float-sm-right">Tambah Slide</button>
        </a>
      </div>
              

      <!-- /.card-header -->
      <div class="card-body">
        <table id="example1" class="table table-bordered table-striped">
          <thead>
          <tr>
            <th width="5px">No</th>
            <th>Title</th>
            <th>Caption</th>
            <th>Image</th>
            <th>Link</th>
            <th>Action</th>
          </tr>
          </thead>
          <tbody>
          @foreach ($sliders as $slider)
          <tr>
            <td>{{ ++$no }}</td>
            <td>{{ $slider->title }}</td>
            <td>{{ $slider->caption }}</td>
            <td><img src="{{ asset('storage/'.$slider->image) }}" alt="" height="50"></td>
            <td>{{ $slider->link }}</td>
            <td>
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-warning">Action</button>
                <button type="button" class="btn btn-sm btn-warning dropdown-toggle dropdown-icon" data-toggle="dropdown">
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <div class="dropdown-menu" role="menu">
                  <a class="dropdown-item" href="{{ route('slider.edit', $slider->title) }}">Edit</a>
                
                  <form action="{{ route('slider.destroy', $slider->title) }}" method="POST">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-sm dropdown-item">Delete</button>
                  </form>
                </div>
              </div>
            </td>
          </tr>
          @endforeach
          
          </tbody>
          </tfoot>
        </table>
      </div>

   
      <!-- /.card-body -->
    <!-- /.card -->
    </div>
  </div>
</div>

@endsection