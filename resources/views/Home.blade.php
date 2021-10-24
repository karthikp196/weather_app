<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Weather</title>
    <!-- font-awesome css -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <!-- bootstrap core css -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- custom css -->
    <link href="css/Style.css" rel="stylesheet">
    <!-- responsive css -->
    <link href="css/Responsive.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Karla:wght@200&display=swap" rel="stylesheet">
</head>
<body>

<section>
    <!-- Loader -->
    <div id="cover"> Fetching...</div>

    <!-- Main content -->
    <div class="container">
        <div class="row weather-body">
            <div class="col-lg-7">
                <div class="weather-data">
                    <div class="weather_card">
                        
                        <div class="weather-img">
                            <img src="images/parachute.png" class="responsive" alt="">
                        </div>
                        <div class="clear"></div>
                        <div class="weather-info">
                            <div class="inner-info">
                                <h1 ><span id="temp"> </span> <span class="celcius_span"> &#8451; </span></h1>
                            </div>
                            <div class="inner-info">
                                 <h3 id="location_show"></h3>
                                 <p id="time_detail"></p>
                            </div>
                            <div class="inner-info">
                                <p class="cloud_icon"> <span><i class="fas fa-cloud-sun-rain"></i></span> </p>
                                <p id="main_info"></p>
                            </div>
                        </div>
                    </div>    
                </div>
            </div>
            <div class="col-lg-5">
                <div class="weather-search">
                    <div class="search-top">
                        <input type="text" id="location" placeholder="Enter Location">
                        <button id="get_data"><i class="fas fa-search"></i></button>
                       
                    </div>
                    <div class="search-bottom">
                        <div class="weather_dts">
                            <div class="refresh_div">
                                <span class="refresh"><i class="fas fa-redo-alt refresh_btn"></i></span>
                            </div>
                            
                            <h3 class="weather_datas">Weather Details</h3>
                            <p class="weather_datas">Weather Status :<span id="main_dtl"> </span>  </p>
                            <p class="weather_datas">Description : <span id="weather_description"> </span> </p>
                            <p class="weather_datas">Feels like  : <span id="feels"> </span> <span class="celcius_span"> &#8451; </span></p>
                            <p class="weather_datas">Pressure : <span id="pressure"> </span> </p>
                            <p class="weather_datas">Humidity : <span id="humidity"> </span> </p>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


    
<!-- main jQuery -->
<script src="js/jquery-3.3.1.min.js"></script>
<!-- bootstrap core js -->
<script src="js/bootstrap.min.js"></script>

<script src="js/script.js"></script>

</body>
</html>