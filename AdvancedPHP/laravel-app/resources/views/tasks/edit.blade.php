@extends('layouts.main')
@section('content')
    <div class="col-4">
        <form action="{{ route('tasks.update', $task->id) }}" method="post">
            @csrf
            @method('patch')
            <div class="form-group">
                <label for="exampleInputEmail1">Title</label>
                <input type="text" name="title" class="form-control" value="{{$task->title}}">
            </div>
            <div class="form-group">
                <label for="Condition">Condition</label>
                <textarea type="text" name="condition" class="form-control" > {{$task->condition}} </textarea>
            </div>

            <div class="form-group">
                <label for="Code">Code</label>
                <input type="text" name="code" class="form-control" value="{{$task->code}}">
            </div>

            <div class="form-group">
                <label for="Code">Views</label>
                <input type="text" name="views" class="form-control" value="{{$task->views}}">
            </div>

            <button type="submit" class="btn btn-primary">Update</button>

        </form>
    </div>
@endsection
