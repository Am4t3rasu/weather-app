// if we want to just want to set height and width of any widget we can use sizedbox.
// if we want use other features like setting background color or padding,margin , border radius etc along with width and height we can use container.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_info_item.dart';
import 'package:weather_app/hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Weather App",style: TextStyle(
          fontWeight: FontWeight.bold
          ),
        ),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.refresh))],
      ),

      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        
                        children: [
                          Text("300°K",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            ),
                          ),
                        SizedBox(height: 16,),
                        Icon(Icons.cloud,
                        size: 64,),
                        SizedBox(height: 16,),
                        Text("Rain",
                        style: TextStyle(
                          fontSize: 20
                        ),)
                          
                        ],
                        
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24,),
            Text("Weather Forecast",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: 16,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(icon: Icons.cloud,time: '00:00',temperature: '300.04',),
                  HourlyForecastItem(icon: Icons.sunny,time: '03:00',temperature: '302.45',),
                  HourlyForecastItem(icon: Icons.cloud,time: '06:00',temperature: '304.36',),
                  HourlyForecastItem(icon: Icons.sunny,time: '09:00',temperature: '301.26',),
                  HourlyForecastItem(icon: Icons.cloud,time: '12:00',temperature: '304.25',)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text("Additional Information",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: 16,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoItem(icon: Icons.water_drop,label: "Humidity",value: "91",),
                AdditionalInfoItem(icon: Icons.air,label: "Wind Speed",value: "7.5"),
                AdditionalInfoItem(icon: Icons.beach_access,label: "Pressure",value: "1000",)
                
              ],
            )


        
              
          ],
        ),
      )
    );
  }
}



