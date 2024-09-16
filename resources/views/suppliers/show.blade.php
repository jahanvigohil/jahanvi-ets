@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Supplier Details</h1>
        <p><strong>ID:</strong> {{ $supplier->id }}</p>
        <p><strong>Name:</strong> {{ $supplier->name }}</p>
        <a href="{{ route('suppliers.edit', $supplier) }}" class="btn btn-warning">Edit</a>
        <a href="{{ route('suppliers.index') }}" class="btn btn-secondary">Back</a>
    </div>
@endsection
