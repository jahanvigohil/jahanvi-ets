@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Suppliers</h1>
        <a href="{{ route('suppliers.create') }}" class="btn btn-primary">Add Supplier</a>
        <table class="table mt-4">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($suppliers as $supplier)
                    <tr>
                        <td>{{ $supplier->id }}</td>
                        <td>{{ $supplier->name }}</td>
                        <td>
                            <a href="{{ route('suppliers.show', $supplier) }}" class="btn btn-info btn-sm">View</a>
                            <a href="{{ route('suppliers.edit', $supplier) }}" class="btn btn-warning btn-sm">Edit</a>
                            <form action="{{ route('suppliers.destroy', $supplier) }}" method="POST" style="display:inline;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        {{ $suppliers->links() }}
    </div>
@endsection
