@extends('layouts.app')

@section('content')
    <h1>Create Role</h1>

    <form action="{{ route('roles.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="name">Role Name</label>
            <input type="text" id="name" name="name" class="form-control" value="{{ old('name') }}" required>
        </div>
        <div class="form-group">
            <label>Permissions</label>
            <div class="form-check">
                @foreach($permissions as $permission)
                    <input type="checkbox" name="permissions[]" value="{{ $permission->id }}" class="form-check-input" {{ in_array($permission->id, old('permissions', [])) ? 'checked' : '' }}>
                    <label class="form-check-label">{{ $permission->name }}</label><br>
                @endforeach
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
@endsection
