import 'package:flutter/material.dart';

class MyTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.6;

    return  Padding(
          padding: EdgeInsets.fromLTRB(20 , 10 , 20 ,5),
          child: Row(
            children: <Widget>[
              Container(
                height: 75,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  //border: Border.all(color: Color(0xffD50000), width: 3,),
                  image: DecorationImage(
                    image: AssetImage('assets/kuldeep01.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(
                width: 20,
              ),
              Container(
                width: c_width,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'હેમિલ્ટન / ન્યૂઝીલેન્ડે પોતાના વનડે ઇતિહાસનો સૌથી સફળ રનચેઝ કર્યો, ભારતને 4 વિકેટે હરાવ્યું',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    SizedBox(height: 5,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Feb 05,2020',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}