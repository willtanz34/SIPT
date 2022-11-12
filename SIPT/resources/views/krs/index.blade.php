<?php
    use App\Models\mahasiswa;
    use App\Models\vjlhmhskrs;
?>
@extends('layouts.app')

@section('title','Mahasiswa')

@section('content')

    <style>
        table tr{
            padding: 10px;
        }
    </style>
            <?php

            $mhss = \DB::select('SELECT StudentID,Nama,kode_krs,kode_term,kode_matakuliah,nama_matakuliah,sks,total_sks FROM vmhskrs')[0];
            echo "Nama : ".$mhss->Nama."<br>";
            echo "Student ID : ".$mhss->StudentID."<br>";
            echo "Total Sks : ".$mhss->total_sks."<br><br>";


       ?>
    <table style="padding: 10px;">
        <tr>
            <th>No</th>
            <th>Kode Matakuliah</th>
            <th>Nama Matakuliah</th>
            <th>SKS</th>
        </tr>
        <?php

        $rows = \DB::select('SELECT StudentID,Nama,kode_krs,kode_term,kode_matakuliah,nama_matakuliah,sks,total_sks FROM vmhskrs');
 
        $no=1;
        foreach ($rows as $row) {
            echo "<tr>";
            echo "<td>".$no."</td>";
            echo "<td>".$row->kode_matakuliah."</td>";
            echo "<td>".$row->nama_matakuliah."</td>";
            echo "<td>".$row->sks."</td>";
            echo "</tr>";
            $no+=1;
        }
        ?>
    </table>
@endsection
