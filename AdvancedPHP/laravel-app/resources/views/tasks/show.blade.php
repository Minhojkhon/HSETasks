@extends('layouts.main')
@section('content')
<div>
    <a href="{{route('tasks.index')}}" class="btn btn-primary">Back</a>
    <table class="table table-dark">
        <thead>
        <tr>
            <th scope="col">id</th>
            <th scope="col">title</th>
            <th scope="col">condition</th>
            <th scope="col">code</th>
            <th scope="col">views</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">{{$task->id}}</th>
            <td>{{$task->title}}</td>
            <td>{{$task->condition}}</td>
            <td>{{$task->code}}</td>
            <td>{{$task->views}}</td>
        </tr>
        </tbody>
    </table>
</div>
@endsection
