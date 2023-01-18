@extends('layouts.main')
@section('content')
    <div class="col-4">
        <form action="{{ route('tasks.store') }}" method="post">
            @csrf
            <div class="form-group">
                <label for="exampleInputEmail1">Title</label>
                <input type="text" name="title" class="form-control" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
                <label for="Condition">Condition</label>
                <textarea type="text" name="condition" class="form-control" aria-describedby="emailHelp"></textarea>
            </div>

            <div class="form-group">
                <label for="Code">Code</label>
                <input type="text" name="code" class="form-control" aria-describedby="emailHelp">
            </div>

            <div class="form-group">
                <label for="Code">Views</label>
                <input type="text" name="views" class="form-control" aria-describedby="emailHelp">
            </div>

            <button type="submit" class="btn btn-primary">Create</button>
        </form>
    </div>
@endsection
