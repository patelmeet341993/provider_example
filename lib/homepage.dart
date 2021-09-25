import 'package:flutter/material.dart';
import 'package:flutter_app/mydata.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  final String name;
  HomePage({required this.name});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Text(
            "Count ${Provider.of<MyData>(context,listen: true).count}",
            style: TextStyle(color: Colors.black38, fontSize: 30),
          ),
          InkWell(
            onTap: () {

              Provider.of<MyData>(context,listen: false).incrementCount();


            },
            child: Container(
              color: Colors.black38,
              padding: EdgeInsets.all(20),
              child: Text("Click Me",style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    ));
  }
}
