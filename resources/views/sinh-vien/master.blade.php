<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="{{asset('images/favicon.ico')}}"/>
    @yield('seo')
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/lte.css')}}">
    <link rel="stylesheet" href="{{asset('css/toastr.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/skins.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/bootstrap-datepicker.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/style-frontend-1-10.css')}}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    <script src="{{asset('js/jquery.min.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/toastr.min.js')}}"></script>
    <script src="{{asset('js/select2.min.js')}}"></script>
    <script src="{{asset('js/cit-update.js')}}"></script>
</head>
<body class="hold-transition skin-yellow-light layout-top-nav">
<div class="wrapper">
    <header class="main-header">
        <nav class="navbar navbar-static-top bk-header">
            <div class="container">
                <div class="navbar-header">
                    <a href="{{url('/')}}" class="navbar-brand">
                        <img style="margin-top: -10px;" height="40" src="{{asset('images/logo.png')}}" alt="">
                    </a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#navbar-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>
                <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="#">L???ch Khai gi???ng</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tra c???u<span
                                    class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="{{action('FrontendController@getViewTraLichHoc')}}">L???ch h???c</a></li>
                                <li><a href="{{action('FrontendController@getViewTraLichThi')}}">L???ch thi</a></li>
                                <li><a href="{{action('FrontendController@getViewKetQuaThi')}}">K???t qu??? thi</a></li>
                                <li><a href="#">Tra c???u ch???ng ch???</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Ch????ng tr??nh ????o t???o<span
                                    class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">???ng d???ng c??ng ngh??? th??ng tin c?? b???n</a></li>
                                <li><a href="#">???ng d???ng c??ng ngh??? th??ng tin n??ng cao</a></li>
                                <li><a href="#">C??c l???p chuy??n ?????</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Tin t???c</a></li>
                        <li><a href="#">Li??n h???</a></li>
                    </ul>
                </div>

            </div>
        </nav>
    </header>
    <div class="content-wrapper">
        @yield('content')
    </div>
    <footer class="main-footer">
        <div class="container">
            <div class="pull-right text-sm text-right"> ?? 2020
                <br> v.24.12.2018
                <br>
            </div>
            <span class="text-sm text-dark">
            <strong>B??? m??n tin h???c thu???c Trung t??m Ngo???i ng??? - Tin h???c | Tr?????ng ?????i H???c S?? Ph???m K??? Thu???t V??nh Long</strong>
            <br>?????a ch???: S??? 73, Nguy???n Hu???, Ph?????ng 2, Tp. V??nh Long
            <br>Email: cit@vlute.edu.vn
        </span>
        </div>
    </footer>
</div>
</body>
</html>
@yield('script')
