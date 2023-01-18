@extends('layouts.main')
@section('content')
<div>
    <a href="{{route('tasks.create')}}" class="btn btn-primary">Create</a>
    <table class="table table-dark">
        <thead>
        <tr>
            <th scope="col">id</th>
            <th scope="col">title</th>
            <th scope="col">condition</th>
            <th scope="col">code</th>
            <th scope="col">views</th>
            <th scope="col"> actions </th>
        </tr>
        </thead>
        <tbody>
        @foreach($tasks as $task)
        <tr>
            <th scope="row">{{$task->id}}</th>
            <td>{{$task->title}}</td>
            <td>{{$task->condition}}</td>
            <td>{{$task->code}}</td>
            <td>{{$task->views}}</td>
            <td>
                <form class="inline" action="{{ route('tasks.destroy', $task->id) }}" method="post">
                <a href="{{ route('tasks.show', $task->id) }}" class="btn btn-primary">view </a>
                <a href="{{ route('tasks.edit', $task->id) }}" class="btn btn-success">edit</a>

                    @csrf
                    @method('delete')
                    <button class="btn btn-danger"> trash </button>
                </form>
            </td>
        </tr>
        @endforeach
        </tbody>
    </table>
</div>
@endsection
