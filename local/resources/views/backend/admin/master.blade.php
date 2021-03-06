<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Administrator | Smartlinks</title>

    {{ Html::style('css/core.common.css') }}
    {{ Html::style('css/core.backend.css') }}
    {{ Html::style('css/backend.css') }}
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
            </li>
            {{--<li class="nav-item d-none d-sm-inline-block">--}}
                {{--<a href="index3.html" class="nav-link">Home</a>--}}
            {{--</li>--}}
            {{--<li class="nav-item d-none d-sm-inline-block">--}}
                {{--<a href="#" class="nav-link">Contact</a>--}}
            {{--</li>--}}
        </ul>

        <!-- SEARCH FORM -->
        <form class="form-inline ml-3">
            <div class="input-group input-group-sm">
                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-navbar" type="submit">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </form>

        <!-- Right navbar links -->
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="#" class="brand-link">
            {{--<img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"--}}
                 {{--style="opacity: .8">--}}
            <span class="brand-text font-weight-light">Quản Trị Hệ Thống</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    {{--<img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">--}}
                </div>
                <div class="info">
                    <a href="#" class="d-block">{{Auth::user()->name}}</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                @include('backend.admin.menu')

            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        {{--<h1 class="m-0 text-dark">@yield('title-page')</h1>--}}
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            {{--<li class="breadcrumb-item active">Starter Page</li>--}}
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="">
                @yield('container')
                    {{--<div class="col-lg-6">--}}
                        {{--<div class="card">--}}
                            {{--<div class="card-body">--}}
                                {{--<h5 class="card-title">Card title</h5>--}}

                                {{--<p class="card-text">--}}
                                    {{--Some quick example text to build on the card title and make up the bulk of the card's--}}
                                    {{--content.--}}
                                {{--</p>--}}

                                {{--<a href="#" class="card-link">Card link</a>--}}
                                {{--<a href="#" class="card-link">Another link</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}

                        {{--<div class="card card-primary card-outline">--}}
                            {{--<div class="card-body">--}}
                                {{--<h5 class="card-title">Card title</h5>--}}

                                {{--<p class="card-text">--}}
                                    {{--Some quick example text to build on the card title and make up the bulk of the card's--}}
                                    {{--content.--}}
                                {{--</p>--}}
                                {{--<a href="#" class="card-link">Card link</a>--}}
                                {{--<a href="#" class="card-link">Another link</a>--}}
                            {{--</div>--}}
                        {{--</div><!-- /.card -->--}}
                    {{--</div>--}}
                    {{--<!-- /.col-md-6 -->--}}
                    {{--<div class="col-lg-6">--}}
                        {{--<div class="card">--}}
                            {{--<div class="card-header">--}}
                                {{--<h5 class="m-0">Featured</h5>--}}
                            {{--</div>--}}
                            {{--<div class="card-body">--}}
                                {{--<h6 class="card-title">Special title treatment</h6>--}}

                                {{--<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>--}}
                                {{--<a href="#" class="btn btn-primary">Go somewhere</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}

                        {{--<div class="card card-primary card-outline">--}}
                            {{--<div class="card-header">--}}
                                {{--<h5 class="m-0">Featured</h5>--}}
                            {{--</div>--}}
                            {{--<div class="card-body">--}}
                                {{--<h6 class="card-title">Special title treatment</h6>--}}

                                {{--<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>--}}
                                {{--<a href="#" class="btn btn-primary">Go somewhere</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<!-- /.col-md-6 -->--}}
                {{--</div>--}}
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
        <div class="p-3">
            <h5>Title</h5>
            <p>Sidebar content</p>
        </div>
    </aside>
    <!-- /.control-sidebar -->

    <!-- Main Footer -->
    <footer class="main-footer" style="margin-left: 0!important;">
        <!-- To the right -->
        <div class="float-right d-none d-sm-inline">

        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2018 <a href="http://smartlinks.vn">www.smartlinks.vn</a>.</strong> All rights reserved.
    </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
{{--<script src="plugins/jquery/jquery.min.js"></script>--}}
<!-- Bootstrap 4 -->
{{--<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>--}}
<!-- AdminLTE App -->
{{--<script src="dist/js/adminlte.min.js"></script>--}}
{{ Html::script('js/core.common.js') }}
{{ Html::script('js/ulti.js') }}
{{ Html::script('js/core.backend.js') }}
{{ Html::script('js/ckeditor/ckeditor.js') }}
    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    </script>
{{ Html::script('js/backend.js') }}
</body>
</html>
