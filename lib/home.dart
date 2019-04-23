import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui/details.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/profile.jpg",
            ),
          ),
        ),
        title: const Text(
          "Findaluzm",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[300],
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Shoes",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      "Filter",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(List.generate(5, (int i) {
                return _listItem(i, context);
              })),
            )
          ],
        ),
      ),
    );
  }

  Widget _listItem(int i, BuildContext context) {
    i++;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Details("assets/$i.png"),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(20),
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Hero(
              tag: "assets/$i.png",
              child: Image.asset(
                "assets/$i.png",
                width: 200,
                height: 200,
              ),
            ),
            Text("NIKE Air Jordan 1", style: TextStyle(fontSize: 15.0)),
            SizedBox(
              height: 3,
            ),
            Text("\$1000",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
