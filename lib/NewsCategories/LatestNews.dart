import 'package:flutter/material.dart';
import 'package:my_news_app/mytilewidget.dart';

class LatestNews extends StatefulWidget {
  @override
  _LatestNewsState createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.8;

    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Center(
              child: Container(
                height: 260,
                width: 370,
                decoration: BoxDecoration(
                  //color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  //border: Border.all(color: Color(0xffD50000), width: 3,),
                  image: DecorationImage(
                    image: AssetImage('assets/donald01.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 260,
                width: 370,
                
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15,0,5,10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'અયોધ્યાના રૌનાહીમાં મસ્જિદ માટે 5 એકર જમીન આપવામાં આવશે, આ સ્થાન પંચકોસી પરિક્રિમાની પરિમિતીથી બહાર',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Times',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),

        ListTile(
          title: Text(
            'Latest News',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),

        MyTileWidget(),
        MyTileWidget(),
        MyTileWidget(),
        MyTileWidget(),
        MyTileWidget(),
        MyTileWidget(),
        MyTileWidget(),
        MyTileWidget(),

        // ListTile(
        //   title: Text('India vs New Zealand 1st ODI: Ross Taylor hundred highlights record victory for hosts',
        //     style: TextStyle(fontSize: 14,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   subtitle: Text('Feb 05,2020',
        //     style: TextStyle(fontSize: 12,

        //     ),
        //   ),
        //   contentPadding: EdgeInsets.all(5) ,
        //   leading: ConstrainedBox(
        //     constraints: BoxConstraints(
        //       minWidth: 100,
        //       minHeight: 100,
        //       maxWidth: 100,
        //       maxHeight: 100,
        //     ),
        //     child: Image.asset('assets/kuldeep01.jpg', fit: BoxFit.cover),
        //   ),
        // ),

        ListTile(
          title: Text('Star'),
        ),
      ],
    );
  }
}
