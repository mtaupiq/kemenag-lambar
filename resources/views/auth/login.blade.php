@extends('layouts.app')

@section('content')


<body style="background-color: #eee;">
    <section class="gradient-form">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-10">
              <div class="card rounded-3 text-black">
                <div class="row g-0">
                  <div class="col-lg-6">
                    <div class="card-body p-md-5 mx-md-4">
      
                      <div class="text-center">
                        <img src="{{ asset('storage/file/1668300407_logo.png') }}" alt="" class="mb-3">
                        <h4 class="mt-1 mb-5 pb-1">Kementerian Agama RI</h4>
                      </div>
      
                      <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <p>Please login to your account</p>
      
                        <div class="form-outline mb-4">
                          <input type="email" id="form2Example11" name ="email" class="form-control @error('email') is-invalid @enderror"
                            placeholder="Email" />
                            @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                          <!-- <label class="form-label" for="form2Example11">Username</label> -->
                        </div>
      
                        <div class="form-outline mb-4">
                          <input type="password" id="form2Example22" name="password" class="form-control @error('password') is-invalid @enderror" placeholder="Password"/>
                          <!-- <label class="form-label" for="form2Example22">Password</label> -->
                          @error('password') 
                          <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                      @enderror
                        </div>
      
                        <div class="text-center pt-1 mb-5 pb-1">
                          <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit">Log
                            in</button>
                        </div>
      
      
                      </form>
      
                    </div>
                  </div>
                  <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                    {{-- <div class="text-white px-3 py-4 p-md-5 mx-md-4"> --}}
                        <img src="{{ asset('storage/file/login.png') }}" alt="" width="80%" height="60%">
                      {{-- <h4 class="mb-4">We are more than just a company</h4>
                      <p class="small mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> --}}
                    {{-- </div> --}}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
@endsection
