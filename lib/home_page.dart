import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sasak_tenun/Halaman/Kain/kain_page.dart';
import 'package:sasak_tenun/Halaman/Olahan/olahan_page.dart';
import 'package:sasak_tenun/Halaman/Kegiatan/kegiatan_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("SASAK TENUN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      )),
                  background: Image.network(
                    "https://www.dhave.id/wp-content/uploads/2016/03/tenun-2.jpg?w=640",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
      body:  Container(
        padding: EdgeInsets.only(top: 30.0),
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //     begin: Alignment.topRight,
          //     end: Alignment.bottomLeft,
          //      stops: [0.1, 0.5, 0.7, 0.9],
          // colors: [
          //   // Colors are easy thanks to Flutter's Colors class.
          //   Colors.blue[300],
          //   Colors.blue[200],
          //   Colors.blue[100],
          //   Colors.blue[50],
          // ],
          //     )
          //   ),
        child: GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 2.2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget>[
          GestureDetector(
          child: myGridItems("Olahan Tenun", "https://www.titintenun.com/wp-content/uploads/2019/04/3-1.jpeg", 0xFFEF9A9A, 0xFFE57373),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>OlahanPage()));
          },
          ),
          GestureDetector(
          child: myGridItems("Kain Tenun", "https://www.titintenun.com/wp-content/uploads/2019/04/92.jpeg", 0xFFF48FB1, 0xFFF06292),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>KainPage()));
          },
          ),

          GestureDetector(
          child: myGridItems("Kegiatan Binaan", "https://www.titintenun.com/wp-content/uploads/2019/04/g.jpeg", 0xFFCE93D8, 0xFFBA68C8),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>KegiatanPage()));
          },
          ),
        
        
        ],
      ),
          ),
),   
    );
  }

Widget myGridItems(String gridName, String gridimage, int color, int color1){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      gradient: new LinearGradient(
        colors: [
          Color(color),
          Color(color1),
        ],
        begin: Alignment.centerLeft,
        end: new Alignment(1.0,1.0), 
      ),
    ),

    child: Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                image: new NetworkImage(gridimage),
                fit: BoxFit.fill,
              )
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 10.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      gridName,style: TextStyle(color:Colors.white,
                      fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(child: Text("Khas Lombok", style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0
                  ),),),

                ],
              ),
            )
          ],
        ),
        Center(

        ),
      ],
    ),
  );
}
}