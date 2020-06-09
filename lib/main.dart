import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './app_screens/home_screen.dart';

void main(){
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title:"New widgets",

  home:Scaffold(
    appBar:AppBar(title: Text("List")),
    body: getListView(),
  ),
)
);


}

//Widget getListView()      //For Small List
//{
//  var listView=ListView(
//
//    children: <Widget>[
//
//      ListTile(
//        leading: Icon(Icons.camera_alt),
//        title:Text("Camera"),
//        trailing:Icon(Icons.radio_button_unchecked,),
//        onTap:(){},
//      ),
//      ListTile(
//        leading: Icon(Icons.phone_iphone),
//        title:Text("Mobile"),
//        trailing:Icon(Icons.radio_button_unchecked),
//        onTap:(){},
//      ),
//          ListTile(
//            leading: Icon(Icons.laptop_mac),
//            title:Text("Laptop"),
//            trailing:Icon(Icons.radio_button_unchecked),
//            onTap:(){},
//          )
//    ],
//  );
//  return listView;
//}

List<String> getListElements()
{
  var items=List<String>.generate(50,(counter)=>"Item $counter");
  return items;
}

Widget getListView()
{
  var listItems=getListElements();
  var listView=ListView.builder(
    itemBuilder:(context,index){
      return ListTile(
        title:Text(listItems[index]),
        leading: Icon(Icons.ac_unit),
        onTap: (){
          debugPrint("${listItems[index]} was clicked");
        },
      );
    }
  );
return listView;
}
