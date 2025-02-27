import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final IconData icon;
  final String temperature;
  final String time;  
  const HourlyForecastItem({super.key,
  required this.icon,
  required this.temperature,
  required this.time,
  
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 6,
       child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              time,style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 8,),
            Icon(icon,
            size: 32,),
            SizedBox(height: 8,),
            Text(temperature)
          ],
        ),
       ),
    ) ;
  }
}