import 'package:flutter/material.dart';

class DetailKegiatan extends StatefulWidget {
  @override
  _DetailKegiatanState createState() => _DetailKegiatanState();
}

class _DetailKegiatanState extends State<DetailKegiatan> {
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
                    "https://www.titintenun.com/wp-content/uploads/2019/04/3-1.jpeg",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",

          ),
        ),
          // child: Padding(
          //   padding: const EdgeInsets.only(bottom: 2.0),
          //   child:ClipPath(
          //     clipper: ClippingClass(),
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: 320.0,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         fit: BoxFit.fill,
          //         image: NetworkImage("https://www.titintenun.com/wp-content/uploads/2019/04/3-1.jpeg"),
          //       ),
          //     ),
          //   ),
          //   ),
          // ),
          // Positioned(
          //   top: 240,
          //   left: 55.0,
          //   right: 40.0,

          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Text("Sepatu Tenun", style: TextStyle(fontSize: 40.0, fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.w600),
          //     ),
          //   ),
          // ),
      ),
    ),
    );
  }
}