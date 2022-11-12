<html>
    <head>
        <title>Laporan Mahasiswa</title>
    </head>
    <body>
        <style>
            body{
                padding: 15px;
            }
            h5{
                margin-top: -15px;
            }
            table, th, td{
                border: 1px solid;
            }
        </style>
        <br>
        <br>
        <br>
        <h1>
            UNIVERSITAS PASTI JAYA<br>
            FAKULTAS ILMU KOMPUTER
        </h1>
        <h5>Jalan. Pasti Ada No.777<br>
            Tlp. 061.777777
        </h5>

        <hr>
        <center><h3>Laporan Mahasiswa</h3></center>
        <table>
            <tr>
                <th>StudentID</th>
                <th>Nama</th>
                <th>Jurusan</th>
                <th>Tahun Masuk</th>
            </tr>
            @foreach ($mahasiswa as $mhs)
                <tr>
                    <td>{{$mhs->StudentID}}</td>
                    <td>{{$mhs->Nama}}</td>
                    <td>{{$mhs->Jurusan}}</td>
                    <td>{{$mhs->Tahun_masuk}}</td>
                </tr>
            @endforeach
        </table>
    </body>
</html>