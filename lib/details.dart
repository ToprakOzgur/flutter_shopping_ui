import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details(this.tag);
  final String tag;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            "OverView",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.shopping_cart),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Hero(
                tag: tag,
                child: Image.asset(tag),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "NIKE Air Jordan 1",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("ADD CART"),
        ),
      ),
    );
  }
}
