<?php

namespace App\Http\Controllers;

use App\Models\Task;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    public function index()
    {
        $tasks = Task::all();
        return view('tasks.index', compact('tasks'));
    }

    public function create()
    {
        return view('tasks.create');
    }

    public function store()
    {
        $data = request()->validate([
            'title' => 'string',
            'condition' => 'string',
            'code' => 'string',
            'views' => 'integer',
        ]);
        Task::create($data);
        return redirect()->route('tasks.index');
    }
    public function show(Task $task)
    {
        return view('tasks.show', compact('task'));
    }

    public function edit(Task $task)
    {
        return view('tasks.edit', compact('task'));
    }

    public function update(Task $task)
    {
        $data = request()->validate([
            'title' => 'string',
            'condition' => 'string',
            'code' => 'string',
            'views' => 'integer',
        ]);
        $task->update($data);
        return redirect()->route('tasks.show', $task->id);
    }
    public function destroy(Task $task)
    {
        $task->delete();
        return redirect()->route('tasks.index');
    }
//    public function show($id)
//    {
//        $task = Task::findOrFail($id);
//        return view('tasks.show', compact('task'));
//    }

//    public function create()
//    {
//        $task =
//            [
//                'title' => 'Кастомизированные контейнеры',
//                'condition' => 'Вас попросили написать 2 класса, CustomList и CustomDict',
//                'code' => 'class CommonProperties():',
//            ];
//        Task::create($task);
//    }



//    public function update()
//    {
//        $task = Task::find(1);
//        $task_new =
//            [
//                'title' => 'Updated Кастомизированные контейнеры',
//                'condition' => 'Updated Вас попросили написать 2 класса, CustomList и CustomDict',
//                'code' => 'Updated class CommonProperties():',
//            ];
//        $task->update($task_new);
//    }

    public function delete()
    {
        $task = Task::find(2);
        $task->delete();
    }
    public function restore()
    {
        $task = Task::withTrashed()->find(2);
        $task->restore();
    }
    public function firstorcreate()
    {

        $task = Task::firstOrCreate([
            'title' => 'New key1'
        ], [
            'title' => 'New title',
            'condition' => 'New condition',
            'code' => 'New code',
        ]);
        dd($task->condition);
    }

    public function updateorcreate()
    {

        $task = Task::updateOrCreate([
            'title' => 'New title'
        ], [
            'title' => 'New title',
            'condition' => 'New condition',
            'code' => 'New s',
        ]);
        dd($task->condition);
    }
}
