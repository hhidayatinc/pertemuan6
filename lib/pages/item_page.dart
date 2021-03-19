import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_page.dart';

class ItemPage extends StatelessWidget{
  final Item newItem;
  const ItemPage({Key key, this.newItem}) : super(key: key);

  @override
  Widget build(BuildContext context){
    
    //final Item itemArgs = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ),
          body: Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(newItem.gambar), height: 200, width: 200,),
                  SizedBox(height: 10,),
                  Text("Name : " + newItem.title, style: TextStyle(fontSize: 20 ),),
                  Text("Released : " + newItem.year, style: TextStyle(fontSize: 20),),
                  Text("Genre : " + newItem.genre, style: TextStyle(fontSize: 20),),
                  Text("Rating : " + newItem.ratings, style: TextStyle(fontSize: 20),),
                ],),
                margin: EdgeInsets.all(8),
            ),
          ],
          ),
          ),
    );
  }
}