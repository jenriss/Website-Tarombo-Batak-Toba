<?php
// koneksi ke database 
$conn = mysqli_connect("localhost", "root", "", "martarombo");
$result = mysqli_query($conn, "SELECT * FROM relasi");

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tarombo Batak Toba - Relasi</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <header>
            <h1 class="site-heading text-center text-faded d-none d-lg-block">
                <span class="site-heading-lower">TAROMBO BATAK TOBA</span>
            </h1>
        </header>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
            <div class="container">
                <a class="navbar-brand text-uppercase fw-bold d-lg-none" href="index.php">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="index.php">Home</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="rumpun.php">Rumpun</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="relasi.php">Relasi</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="partuturan.php">Partuturan</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="contact_us.php">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <section class="page-section about-heading">
            <div class="container">
                <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="assets/img/2.jpg" width= "50%"" alt="..." />
                <div class="about-heading-content">
                    <div class="row">
                        <div class="col-xl-9 col-lg-10 mx-auto">
                            <div class="bg-faded rounded p-5">
                            <h2 class="section-heading mb-4">
                                    <span class="section-heading-upper">Relasi Marga Batak Toba</span>
                                </h2>
                                <p>Padan merupakan sebuah sumpah yang tidak boleh dilanggar oleh orang batak, Kecuali dia tidak takut dengan karma yang akan terjadi. Padan ini masih jauh berbeda dari "Janji", Dimana kalau janji masih banyak yang melanggar dan mempermainkan janji tersebut.
                                </p> 
                                <p>songon nanidok ni Umpasa: “Togu urat ni bulu, toguan urat ni padang; “Togu nidok ni uhum, toguan nidok ni padan”
                                </p>
                                <p> Berikut relasi padan antar marga batak toba : </p>
                                <style>
                                    table {
                                        border-collapse: collapse;
                                        width: 100%;
                                    }
                                    table, th, td {
                                        border: 1px solid black;
                                    }
                                    th, td {
                                        padding: 10px;
                                    }
                                    th {
                                        background-color: #4CAF50;
                                        color: white;
                                    }
                                </style>
                                <table>
                                        <tr>
                                            <th>Nama Marga</th>
                                            <th>Relasi Marga</th>
                                        </tr>
                                        <?php while ( $row = mysqli_fetch_assoc($result)): ?>
                                        <tr>
                                            <td><?= $row["Nama Marga"]; ?></td>   
                                            <td><?= $row["Relasi Marga"]; ?></td>                                        
                                        </tr>
                                        <?php endwhile; ?>
                                    </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="footer text-faded text-center py-5">
            <div class="container"><p class="m-0 small">Copyright &copy; Kelompok 2</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>