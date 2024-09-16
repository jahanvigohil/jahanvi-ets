@extends('layouts.app')

@section('content')
    <h1>Create Permission</h1>

    <form action="{{ route('permissions.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="name">Permission Name</label>
            <input type="text" id="name" name="name" class="form-control" value="{{ old('name') }}" required>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
@endsection
