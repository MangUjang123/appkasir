
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
   <!-- Content Header (Page header) -->
   <div class="content-header">
     <div class="container-fluid">
       <div class="row mb-2">
         <div class="col-sm-6">
           <h1 class="m-0">Produk</h1>
         </div><!-- /.col -->
         <div class="col-sm-6">
           <ol class="breadcrumb float-sm-right">
             <li class="breadcrumb-item"><a href="#">Data Utama</a></li>
             <li class="breadcrumb-item active">Produk</li>
           </ol>
         </div><!-- /.col -->
       </div><!-- /.row -->
     </div><!-- /.container-fluid -->
   </div>
   <!-- /.content-header -->

   <!-- Main content -->
   <section class="content">
     <div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h5>Produk</h5>
        </div>
        <div class="card-body">

            <table  id="example1" class="table table-hover">
                <thead class="bg-blue">
                    <th>Produk ID</th>
                    <th>Nama Produk</th>
                    <th>Harga</th>
                    <th>Stok</th>
                    <th>Aksi</th>
                </thead>
                <?php
                    $sql="SELECT * FROM produk";
                    $query=mysqli_query($koneksi,$sql);
                    while($kolom=mysqli_fetch_array($query)){
                        ?>

                    <tr>
                        <td><?= $kolom['ProdukID']; ?></td>
                        <td><?= $kolom['NamaProduk']; ?></td>
                        <td><?= $kolom['Harga']; ?></td>
                        <td><?= $kolom['Stok']; ?></td>
                        <td>
                          <a href="aksi/produk.php" data-toggle="modal" data-target="#modalubah<?= $kolom['ProdukID']; ?>"><i class="fas fa-edit"></i>
                        </a>
                        &nbsp;| &nbsp;
                          <a onclick="return confirm('Yakin untuk hapus data ini?')"  href="aksi/produk.php?aksi=hapus&produkID=<?= $kolom['ProdukID']; ?>"><i class="fas fa-trash">

                          </a></i></td>
                    </tr>
                    <!-- MODAL UBAH USER -->
 <div class="modal fade" id="modalubah<?= $kolom['ProdukID']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Data Produk</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="aksi/produk.php" method="post">
            <input type="hidden" name="aksi" value="ubah">
            <input type="hidden" name="produkID" value="<?=$kolom['ProdukID']; ?>">

            <label for="nama">Nama Produk</label>
            <input type="text" name="namaproduk" value="<?=$kolom['NamaProduk']; ?>" class="form-control" required>
            <br>
            <label for="harga">Harga</label>
            <input type="number" name="harga" value="<?=$kolom['Harga']; ?>" class="form-control" required>
            <br>
            <br>
            <label for="stok">Stok</label>
            <input type="number" name="stok" value="<?=$kolom['Stok']; ?>" class="form-control" required>
            <br>
            <button type="submit" class="btn btn-block bg-blue"> <i class="fas fa-save"></i> Simpan </button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
                    <?php
                    } // AKHIR WHILE
                ?>
            </table>

            <button type="button" class="btn bg-info btn-block mt-3" data-toggle="modal" data-target="#modaltambah" ><i class="fas fa-plus"></i>Tambah Produk</button>

        </div>
    </div>

     </div><!-- /.container-fluid -->
   </section>
   <!-- /.content -->
 </div>
 <!-- /.content-wrapper -->

 <!-- MODAL TAMBAH PRODUK -->
 <div class="modal fade" id="modaltambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Produk</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="aksi/produk.php" method="post">
            <input type="hidden" name="aksi" value="tambah">
            <label for="nama">Nama Produk</label>
            <input type="text" name="namaproduk" class="form-control" required>
            <br>
            <label for="harga">Harga</label>
            <input type="number" name="harga" class="form-control" required>
            <br>
            <label for="stok">Stok</label>
            <input type="number" name="stok" class="form-control" required>
            <br>
            <button type="submit" class="btn btn-block bg-blue"> <i class="fas fa-save"></i> Simpan </button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

