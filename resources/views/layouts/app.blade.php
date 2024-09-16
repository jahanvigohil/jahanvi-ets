<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Laravel App')</title>
    
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <style>
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #f8f9fa;
            padding-top: 20px;
        }

        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: #333;
            display: block;
        }

        .sidebar a:hover {
            background-color: #ddd;
            color: #000;
        }

        .content {
            margin-left: 270px;
        }
    </style>
</head>
<body>

    <div class="sidebar">
        <h4 class="text-center">Dashboard Menu</h4>
        <a href="{{ route('roles.index') }}">Roles</a>
        <a href="{{ route('permissions.index') }}">Permissions</a>
        <a href="{{ route('export.csv') }}">Export CSV</a>
        <a href="{{ route('export.excel') }}">Export Excel</a>
        <a href="{{ route('export.pdf') }}">Export PDF</a>
        <a href="{{ route('suppliers.index') }}">Suppliers</a>
        <a href="{{ route('consumers.index') }}">Consumers</a>
        <a href="{{ route('logout') }}">Logout</a>
    </div>

    <main class="container mt-4">
        @yield('content')
    </main>

    <footer class="bg-light text-center py-3">
        <p>&copy; {{ date('Y') }} Your Company</p>
    </footer>

    <!-- jQuery, Popper.js, and Bootstrap JS CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <!-- Custom JS -->
    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
