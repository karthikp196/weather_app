<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use DB;

class Weather extends Controller
{

    public function index(Request $request)
    {
        return view('Home');
    }

    // Function To Get the weather data
    public function weather_data(Request $request)
    {
        $location = $request->location;
        // Api call with Location
        $response = Http::get('api.openweathermap.org/data/2.5/weather?q='.$location.'&appid=a77bf02a206d8ff2d840c0cc0ff1970d');
        $body = $response->json();

        // Destructuring the API data
        $weather = $body['weather'];
        $date = $body['dt'];
        $info = $body['main'];
       
        $weather_status = $weather[0]['main'];
        $description = $weather[0]['description'];
        $temperature = $info['temp'];
        $celcius = $temperature-273.15;
        $feel = $info['feels_like'];
        $humidity = $info['humidity'];
        $pressure = $info['pressure'];
        $timestamp = date('m/d/Y', $date);
        $feel_like = $feel-273.15;
        $message['weather_status'] = $weather_status;
        $message['description'] = $description;
        $message['temperature'] = round($celcius, 2);
        $message['feel'] = round($feel_like, 2);
        $message['humidity'] = $humidity;
        $message['pressure'] = $pressure;
        $message['time'] = $timestamp;
        $message['city'] = $location;

        // To insert into table
        DB::table('weather_data')->insert(['weather_status' => $weather_status , 'description' =>  $description , 'temperature' => $celcius , 
        "feel_like" => $feel_like , "humidity" => $humidity ,"pressure" => $pressure , "city" => $location ]);

        // To use the Response in DOM
        echo json_encode($message);
    }


}