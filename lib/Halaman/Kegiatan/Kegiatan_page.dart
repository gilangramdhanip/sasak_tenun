import 'package:flutter/material.dart';
import 'package:sasak_tenun/Halaman/Kegiatan/detail_kegiatan.dart';

class KegiatanPage extends StatefulWidget {
  @override
  _KegiatanPageState createState() => _KegiatanPageState();
}

class _KegiatanPageState extends State<KegiatanPage> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("Kegiatan Binaan", style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 25.0 ,
        ),),
      ),

      body:  Container(
        child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 2.4,
        children: <Widget>[
          GestureDetector(
          child: myGridItems("Olahan Tenun", "https://www.titintenun.com/wp-content/uploads/2019/04/3-1.jpeg"),
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailOlahan()));
          },
          ),
          GestureDetector(
          child: myGridItems("Kain Tenun", "https://www.titintenun.com/wp-content/uploads/2019/04/92.jpeg"),
          onTap: (){
           // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKain()));
          },
          ),

          GestureDetector(
          child: myGridItems("Kegiatan Binaan", "https://www.titintenun.com/wp-content/uploads/2019/04/g.jpeg"),
          onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKegiatan()));
          },
          ),
        
        
        ],
      ),
          ),
          
    );
}
  Widget myGridItems(String gridName, String gridimage){
  return Container(

    child: Stack(
      children: <Widget>[
      
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new NetworkImage(gridimage),
                fit: BoxFit.fill,
              )
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
                  Container(child: Text("Kegiatan", style: TextStyle(color: Colors.white,fontSize: 16.0),),),
                  SizedBox(width: 10.0,),
                  Container(child: Icon(Icons.work, color: Colors.white,),),
                  SizedBox(width: 10.0,),
                  Container(child: Text("Binaan", style: TextStyle(color: Colors.white,fontSize: 16.0),),),
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