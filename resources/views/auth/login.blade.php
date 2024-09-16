<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">Login</div>
                    <div class="card-body">
                        <form id="loginForm">
                            @csrf
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" id="email" name="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" id="password" name="password" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button>
                            <div>Don't have an account? <a href="{{route('register.form')}}">Sign Up</a></div>
                        </form>
                        <div id="loginError" class="mt-3 text-danger"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('#loginForm').submit(function(e) {
                e.preventDefault();
                
                $.ajax({
                    url: '/api/login',
                    type: 'POST',
                    data: $(this).serialize(),
                    success: function(response) {
                        // Handle successful login (e.g., store token and redirect)
                        localStorage.setItem('auth_token', response.token);
                        window.location.href = '/home';
                    },
                    error: function(xhr) {
                        // Display validation errors
                        var errors = xhr.responseJSON.errors;
                        $('#loginError').html(errors.email ? errors.email[0] : 'An error occurred.');
                    }
                });
            });
        });
    </script>
</body>
</html>
