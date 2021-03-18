import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemPage extends StatelessWidget{
  final Item newItem;
  const ItemPage({Key key, this.newItem}) : super(key: key);

  @override
  Widget build(BuildContext context){
    
    //final Item itemArgs = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
          ),
          body: Row(
           
            children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                
                children: [
                  
                  Text(newItem.title, style: TextStyle(fontSize: 20 ),),
                  
                  Text(newItem.year, style: TextStyle(fontSize: 20),),
                  Text(newItem.genre, style: TextStyle(fontSize: 20),),
                  Text(newItem.ratings, style: TextStyle(fontSize: 20),),
                ],),
            )
          ],)
          ),
    );
  }
}