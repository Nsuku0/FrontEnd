import 'package:flutter/material.dart';
import 'package:FrontEnd/constants.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo ({Key? key}): super(key:key);

  @override
  Widget build (BuildContext c) {
    return Container (
      height: 540,
      padding: EdgeInsets.all(appPadding),
      decoration: BoxDecoration (
        color: panels,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Company Information',
            style: TextStyle(
              color: text_col;
              
            )
          )


        ]
      )
    )
  }
}