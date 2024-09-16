<?php

namespace App\Http\Controllers;

use App\Models\User;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\UsersExport;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;

class ExportController extends Controller
{
    public function exportCsv()
    {
        return Excel::download(new UsersExport, 'users.csv');
    }

    public function exportExcel()
    {
        return Excel::download(new UsersExport, 'users.xlsx');
    }

    public function exportPdf()
    {
        $users = User::all();
        $pdf = Pdf::loadView('pdf.users', compact('users'));
        return $pdf->download('users.pdf');
    }
}
