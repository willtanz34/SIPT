<?php
    use App\Models\mahasiswa;
    use App\Models\vjlhmhskrs;
?>
@extends('layouts.app')

@section('title','Mahasiswa')

@section('content')
    <h1>Index Mahasiswa</h1>
    <style>
        table tr{
            padding: 10px;
        }
    </style>
    <table style="padding: 10px;">
        <tr>
            <th>Student ID</th>
            <th>Nama</th>
            <th>Jumlah KRS</th>
        </tr>
        <?php
        // $mahasiswas = mahasiswa::get();

        // foreach ($mahasiswas as $mahasiswa) {
        //     echo "<tr>";
        //     echo "<td>".$mahasiswa->studentId."</td>";
        //     echo "<td>".$mahasiswa->nama."</td>";
        //     echo "<td>".$mahasiswa->jurusan."</td>";
        //     echo "<td>".$mahasiswa->tahunMasuk."</td>";
        //     echo "</tr>";
        // }

        
        $rows = DB::select("select student_id, nama, term, total_sks from student_data");
 

        foreach ($rows as $row) {
            echo "<tr>";
            echo "<td>".$row->student_id."</td>";
            echo "<td>".$row->nama."</td>";
            echo "<td>".$row->total_sks."</td>";
            echo "</tr>";
        }
        ?>
    </table>
@endsection
