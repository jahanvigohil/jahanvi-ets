<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/additional-methods.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Register</div>
                    <div class="card-body">
                        <form id="registerForm" action="{{ route('register') }}" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group">
                                <label for="firstname">First Name:</label>
                                <input type="text" id="firstname" name="firstname" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="lastname">Last Name:</label>
                                <input type="text" id="lastname" name="lastname" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" id="email" name="email" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="contact_number">Contact Number:</label>
                                <input type="text" id="contact_number" name="contact_number" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="postcode">Postcode:</label>
                                <input type="text" id="postcode" name="postcode" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" id="password" name="password" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="password_confirmation">Confirm Password:</label>
                                <input type="password" id="password_confirmation" name="password_confirmation" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="profile_picture">Profile Picture:</label>
                                <input type="file" id="profile_picture" name="profile_picture[]" class="form-control-file" multiple>
                            </div>

                            <div class="form-group">
                                <label>Hobbies:</label><br>
                                <div class="form-check form-check-inline">
                                    <input type="checkbox" name="hobbies[]" value="reading" class="form-check-input">
                                    <label class="form-check-label">Reading</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input type="checkbox" name="hobbies[]" value="traveling" class="form-check-input">
                                    <label class="form-check-label">Traveling</label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Gender:</label><br>
                                <div class="form-check form-check-inline">
                                    <input type="radio" name="gender" value="male" class="form-check-input">
                                    <label class="form-check-label">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input type="radio" name="gender" value="female" class="form-check-input">
                                    <label class="form-check-label">Female</label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="roles">Role:</label>
                                <select name="roles[]" id="roles" class="form-control" multiple>
                                    @foreach($roles as $role)
                                        <option value="{{ $role->id }}">{{ $role->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="state">State:</label>
                                <select id="state" name="state_id" class="form-control">
                                    @foreach($states as $state)
                                        <option value="{{ $state->id }}">{{ $state->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="city">City:</label>
                                <select id="city" name="city_id" class="form-control">
                                    <!-- Cities will be loaded here -->
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary">Register</button>
                            <div>Have an account? <a href="{{route('login')}}">Login</a></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('#registerForm').validate({
                rules: {
                    firstname: {
                        required: true,
                        lettersonly: true
                    },
                    lastname: {
                        required: true,
                        lettersonly: true
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    contact_number: {
                        required: true,
                        digits: true
                    },
                    postcode: {
                        required: true,
                        digits: true
                    },
                    password: {
                        required: true,
                        minlength: 6
                    },
                    password_confirmation: {
                        equalTo: "#password"
                    },
                    state_id: {
                        required: true
                    },
                    city_id: {
                        required: true
                    },
                    gender: {
                        required: true
                    }
                },
                messages: {
                    firstname: "Please enter a valid first name",
                    lastname: "Please enter a valid last name",
                    email: "Please enter a valid email address",
                    contact_number: "Please enter a valid contact number",
                    postcode: "Please enter a valid postcode",
                    password: "Password must be at least 6 characters long",
                    password_confirmation: "Passwords do not match",
                    state_id: "Please select a state",
                    city_id: "Please select a city",
                    gender: "Please select a gender"
                },
                submitHandler: function(form) {
                    var formData = new FormData(form);

                    $.ajax({
                        url: $(form).attr('action'),
                        type: 'POST',
                        data: formData,
                        processData: false,
                        contentType: false,
                        success: function(response) {
                            // Handle successful registration
                            alert('Registration successful!');
                            // Optionally, redirect or clear form
                            window.location.href = response.redirect_url; // Example redirection
                        },
                        error: function(xhr) {
                            // Handle errors
                            var errors = xhr.responseJSON.errors;
                            for (var key in errors) {
                                alert(errors[key][0]); // Display first error message for each field
                            }
                        }
                    });
                }
            });

            $('#state').change(function() {
                var stateId = $(this).val();
                $.get('/cities', { state_id: stateId }, function(data) {
                    $('#city').empty();
                    $('#city').append('<option value="">Select City</option>');
                    $.each(data, function(index, city) {
                        $('#city').append('<option value="' + city.id + '">' + city.name + '</option>');
                    });
                });
            });
        });
    </script>
</body>

</html>
