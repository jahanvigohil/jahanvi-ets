<?php

namespace App\Http\Controllers;

use App\Models\Supplier;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class SupplierController extends Controller
{
    public function index()
    {
        Gate::authorize('view suppliers', Supplier::class);
        $suppliers = Supplier::paginate(10); // Pagination
        return view('suppliers.index', compact('suppliers'));
    }

    public function create()
    {
        Gate::authorize('create suppliers', Supplier::class);
        return view('suppliers.create');
    }

    public function store(Request $request)
    {
        Gate::authorize('create suppliers', Supplier::class);

        $request->validate([
            'name' => 'required|string|max:255',
        ]);

        Supplier::create($request->all());
        return redirect()->route('suppliers.index')->with('success', 'Supplier created successfully.');
    }

    public function show(Supplier $supplier)
    {
        Gate::authorize('view suppliers', $supplier);
        return view('suppliers.show', compact('supplier'));
    }

    public function edit(Supplier $supplier)
    {
        Gate::authorize('update suppliers', $supplier);
        return view('suppliers.edit', compact('supplier'));
    }

    public function update(Request $request, Supplier $supplier)
    {
        Gate::authorize('update suppliers', $supplier);

        $request->validate([
            'name' => 'required|string|max:255',
        ]);

        $supplier->update($request->all());
        return redirect()->route('suppliers.index')->with('success', 'Supplier updated successfully.');
    }

    public function destroy(Supplier $supplier)
    {
        Gate::authorize('delete suppliers', $supplier);
        $supplier->delete();
        return redirect()->route('suppliers.index')->with('success', 'Supplier deleted successfully.');
    }
}
