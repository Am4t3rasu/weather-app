// if we want to just want to set height and width of any widget we can use sizedbox.
// if we want use other features like setting background color or padding,margin , border radius etc along with width and height we can use container.

import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("App Name",style: TextStyle(
          fontWeight: FontWeight.bold
          ),
        ),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.refresh))],
      ),

      body:Align(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                
                child: Column(
                  children: [
                    Text("300°K",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      ),
                    ),
                  SizedBox(height: 10,),
                  Icon(Icons.cloud,
                  size: 47,),
                  SizedBox(height: 10,),
                  Text("Rain",
                  style: TextStyle(
                    fontSize: 16
                  ),)
                    
                  ],
                  
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Weather Forecast",
            style: TextStyle(
              fontWeight: FontWeight.bold
            )),
        
              
          ],
        ),
      )
    );
  }
}