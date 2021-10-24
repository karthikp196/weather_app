
$(document).ready(function()
{

    // csrf Token 
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });


    // To get a weather report for new location
   $("#get_data").click(function()
   {
       var location = $("#location").val();
       var data = {location : location};
       var url = "http://127.0.0.1:8000/weather";
       localStorage.setItem('place', location);

       $.ajax(
       {
           url:url,
           type:"POST",
           data:data,
           dataType:"JSON",

            // To Initialize the Loader
           beforeSend: function() { 
            $("#cover").css('display','block');
            },
            complete: function() { 
                $("#cover").css('display','none');
            },
           success:function(data)
           {  
                $(".cloud_icon").css('display','block');       
                $(".celcius_span").css('display','inline');    
                $("#temp").text(data.temperature);
                $("#location_show").text(data.city);
                $('#main_info').text(data.weather_status);
                $('#time_detail').text(data.time);
                $('#main_dtl').text(data.weather_status);
                $('#weather_description').text(data.description);
                $('#feels').text(data.feel);
                $('#pressure').text(data.pressure);
                $('#humidity').text(data.humidity);
    
           }
       });

   })

    // Function for Refresh the Selected Location
   $(".refresh_btn").click(function()
   {
       var location = localStorage.getItem('place');
       var data = {location : location};
       var url = "http://127.0.0.1:8000/weather";
     
       $.ajax(
       {
           url:url,
           type:"POST",
           data:data,
           dataType:"JSON",
           beforeSend: function() { 
            $("#cover").css('display','block');
            },
            complete: function() { 
                $("#cover").css('display','none');
            },
           success:function(data)
           {  
                $(".cloud_icon").css('display','block');       
                $(".celcius_span").css('display','inline');    
                $("#temp").text(data.temperature);
                $("#location_show").text(data.city);
                $('#main_info').text(data.weather_status);
                $('#time_detail').text(data.time);
                $('#main_dtl').text(data.weather_status);
                $('#weather_description').text(data.description);
                $('#feels').text(data.feel);
                $('#pressure').text(data.pressure);
                $('#humidity').text(data.humidity);
    
           }
       });
      
   })

   
})