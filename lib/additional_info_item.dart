//widgets are immutable so they are marked as constant/final

import 'package:flutter/material.dart';

class AdditionalInfoItem extends StatelessWidget {

  final IconData icon;
  final String label;
  final String value;
  const AdditionalInfoItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,size: 32,),


        const SizedBox(height: 8,),



        Text(label),


        const SizedBox(height: 8,),

        
        Text(value,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16
        ))
      ],
    );
  }
}