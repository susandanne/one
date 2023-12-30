import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity()    );
  }
  }

class HomeActivity extends StatelessWidget {

  var item=[{"name":"suman","city":"shalimar","age":"48"},
    {"name":"rohan","city":"comboa","age":"24"},
    {"name":"davis","city":"chendi","age":"44"},
    {"name":"gems","city":"chendi","age":"77"},
    {"name":"sanmai","city":"gloria","age":"16"},
    {"name":"masuda","city":"estfan","age":"56"},
  ];
  mysnackbar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
  @override
  Widget build(BuildContext context) {

 return Scaffold(
   backgroundColor: Colors.greenAccent,
   appBar:AppBar(title: Text("help me"),backgroundColor: Colors.amber,) ,
   // body:ListView(
   //   children: [
   //     ListTile(title:Text('one') ,leading:Icon(Icons.icecream),onTap:(){mysnackbar(context, 'item 1');} ,),
   //     ListTile(title:Text('2') ,leading:Icon(Icons.icecream),onTap:(){mysnackbar(context, 'item 2');} ,),
   //     ListTile(title:Text('3') ,leading:Icon(Icons.icecream),onTap:(){mysnackbar(context, 'item 3');} ,),
   //     ListTile(title:Text('4') ,leading:Icon(Icons.icecream),onTap:(){mysnackbar(context, 'item 4');} ,),
   //     ListTile(title:Text('5') ,leading:Icon(Icons.icecream),onTap:(){mysnackbar(context, 'item 5');} ,)
   //
   //   ],
   // ) ,
   body:ListView.builder(itemCount:item.length,
   itemBuilder:(context,index){
      return ListTile(leading: Icon(Icons.icecream),title: Text(item[index]["name"]!),
          subtitle:Text(item[index]["city"]!),
          onTap: (){mysnackbar(context,item[index]["age"]);},);
   } ,) ,

 );
  }
}



