import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            padding: EdgeInsets.only(left: 15.0, top: 80.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Camera",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 50.0,
                              fontFamily: 'MetalMania',
                              color: Colors.deepOrange,
                              //fontWeight: FontWeight.w700,
                              //fontStyle: FontStyle.italic,
                            )
                        )
                    ),
                    Expanded(
                        child: Text("-Rs.35000",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 40.0,
                              fontFamily: 'MetalMania',
                              color: Colors.white,
                              //fontWeight: FontWeight.w700,
                              //fontStyle: FontStyle.italic,
                            )
                        )
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Mobile",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 50.0,
                              fontFamily: 'MetalMania',
                              color: Colors.deepOrange,
                              //fontWeight: FontWeight.w700,
                              //fontStyle: FontStyle.italic,
                            )
                        )
                    ),
                    Expanded(
                        child: Text("-Rs.15000",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 40.0,
                              fontFamily: 'MetalMania',
                              color: Colors.white,
                              //fontWeight: FontWeight.w700,
                              //fontStyle: FontStyle.italic,
                            )
                        )
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Laptop",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 50.0,
                              fontFamily: 'MetalMania',
                              color: Colors.deepOrange,
                              //fontWeight: FontWeight.w700,
                              //fontStyle: FontStyle.italic,
                            )
                        )
                    ),
                    Expanded(
                        child: Text("-Rs.85000",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 40.0,
                              fontFamily: 'MetalMania',
                              color: Colors.white,
                              //fontWeight: FontWeight.w700,
                              //fontStyle: FontStyle.italic,
                            )
                        )
                    )
                    ,
                  ],
                ),
                ImageLoader(),
//                Scaffold(
//                  body:getListView(),
//                ),
               BookButton(),
              ],
            )
        )
    );
    throw UnimplementedError();
  }
}

class ImageLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pic = AssetImage('images/mobile.png');
    Image imageObj = Image(
      image: pic,
      height: 150.0,
      width: 150.0,
    );

    return Container(child: imageObj);
  }
}

class BookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 40.0),
        height: 80.0,
        width: 250.0,
        child: RaisedButton(
            onPressed: () => bookDevice(context)  ,
            child: Text(
              "Book Device",
            style:TextStyle(
              fontSize:40.0,
              color:Colors.black87,
              fontFamily: 'Piedra',
              fontWeight: FontWeight.w800,
            )
            ),
            elevation: 8.0,
            color: Colors.yellowAccent
        )
    );
  }

  void bookDevice(BuildContext context){
    var alertDialog=AlertDialog(
      title:Text("Device Booked"),
          content: Text("Thank you for Shopping !"),
    );
    showDialog(
        context: context,
      builder: (BuildContext context)=> alertDialog
    );
  }
}





