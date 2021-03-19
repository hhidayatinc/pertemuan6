import 'package:flutter/widgets.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:belanja/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item( gambar: 'assets/images/aquaman.jpg', title: 'Aquaman ', genre: 'Action,Adventure,Fantasy',
    ratings: '6.9/10', 
    year: '2018'),
    Item(gambar: 'assets/images/coco.jpg', title: 'Coco ', genre: 'Animation, Adventure, Family',
    ratings: '8.4/10', 
    year: '2017'),
     Item(gambar: 'assets/images/up.jpg', title: 'Up ', genre: 'Animation, Adventure, Comedy',
    ratings: '8.2/10', 
    year: '2009'),
     Item(gambar: 'assets/images/blackpanther.jpg',title: 'Black Panther ', genre: 'Action, Adventure, Sci-Fi',
    ratings: '7.3/10', 
    year: '2018'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title : Text("Movies List ")
          ),
          body: Container(
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => ItemPage(newItem: item)));
                        //Navigator.pushNamed(context, '/item', arguments: item);
                      },
                      child: Card(
                        child: Container(
                            margin: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Expanded(child: Text(item.title)),
                                
                              ],
                            )),
                      ),
                    );
                  })
                  ),
        ));
  }
}
