import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail_olahan.dart';

class OlahanPage extends StatefulWidget {
  @override
  _OlahanPageState createState() => _OlahanPageState();
}

class _OlahanPageState extends State<OlahanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text("Oalahan Tenun", style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 25.0 ,
        ),),
      ),

      body:  Container(
        child: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 0.9,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget>[
          GestureDetector(
          child: myGridItems("Olahan Tenun", "https://www.titintenun.com/wp-content/uploads/2019/04/3-1.jpeg", 0xFFEF9A9A, 0xFFE57373),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailOlahan()));
          },
          ),
          GestureDetector(
          child: myGridItems("Kain Tenun", "https://www.titintenun.com/wp-content/uploads/2019/04/92.jpeg", 0xFFEF9A9A, 0xFFE57373),
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>KainPage()));
          },
          ),

          GestureDetector(
          child: myGridItems("Kegiatan Binaan", "https://www.titintenun.com/wp-content/uploads/2019/04/g.jpeg", 0xFFEF9A9A, 0xFFE57373),
          onTap: (){
           // Navigator.push(context, MaterialPageRoute(builder: (context)=>KegiatanPage()));
          },
          ),
        
        
        ],
      ),
          ),
          
    );
}
  Widget myGridItems(String gridName, String gridimage, int color, int color1){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24.0),
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
              borderRadius: BorderRadius.circular(24.0),
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
               child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 10.0,),
                  Container(child: Text("Olahan", style: TextStyle(color: Colors.white,fontSize: 16.0),),),
                  SizedBox(width: 10.0,),
                  Container(child: Icon(Icons.picture_in_picture),),
                  SizedBox(width: 10.0,),
                  Container(child: Text("Tenun", style: TextStyle(color: Colors.white,fontSize: 16.0),),),
                  SizedBox(height: 10.0,),
                                  ],),),
                  Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(gridName,style: TextStyle(color:Colors.white,fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
          ],
        )
      ],
    ),
  );

  }
}