@extends('layouts.app')

@section('content')
    <h1>Edit Role</h1>

    <form action="{{ route('roles.update', $role->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="name">Role Name</label>
            <input type="text" id="name" name="name" class="form-control" value="{{ old('name', $role->name) }}" required>
        </div>
        <div class="form-group">
            <label>Permissions</label>
            <div class="form-check">
                @foreach($permissions as $permission)
                    <input type="checkbox" name="permissions[]" value="{{ $permission->id }}" class="form-check-input" {{ $role->permissions->contains($permission->id) ? 'checked' : '' }}>
                    <label class="form-check-label">{{ $permission->name }}</label><br>
                @endforeach
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
@endsection
