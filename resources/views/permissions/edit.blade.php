@extends('layouts.app')

@section('content')
    <h1>Edit Permission</h1>

    <form action="{{ route('permissions.update', $permission->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="name">Permission Name</label>
            <input type="text" id="name" name="name" class="form-control" value="{{ old('name', $permission->name) }}" required>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
@endsection
