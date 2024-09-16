<?php

namespace App\Http\Controllers;

use App\Models\Consumer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class ConsumerController extends Controller
{
    public function index()
    {
        Gate::authorize('view consumers', Consumer::class);
        $consumers = Consumer::paginate(10); // Pagination
        return view('consumers.index', compact('consumers'));
    }

    public function create()
    {
        Gate::authorize('create consumers', Consumer::class);
        return view('consumers.create');
    }

    public function store(Request $request)
    {
        Gate::authorize('create consumers', Consumer::class);

        $request->validate([
            'name' => 'required|string|max:255',
        ]);

        Consumer::create($request->all());
        return redirect()->route('consumers.index')->with('success', 'Consumer created successfully.');
    }

    public function show(Consumer $consumer)
    {
        Gate::authorize('view consumers', $consumer);
        return view('consumers.show', compact('consumer'));
    }

    public function edit(Consumer $consumer)
    {
        Gate::authorize('update consumers', $consumer);
        return view('consumers.edit', compact('consumer'));
    }

    public function update(Request $request, Consumer $consumer)
    {
        Gate::authorize('update consumers', $consumer);

        $request->validate([
            'name' => 'required|string|max:255',
        ]);

        $consumer->update($request->all());
        return redirect()->route('consumers.index')->with('success', 'Consumer updated successfully.');
    }

    public function destroy(Consumer $consumer)
    {
        Gate::authorize('delete consumers', $consumer);
        $consumer->delete();
        return redirect()->route('consumers.index')->with('success', 'Consumer deleted successfully.');
    }

}
