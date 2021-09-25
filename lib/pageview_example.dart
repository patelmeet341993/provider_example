import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {

  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller=PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    return PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        controller: controller,
        itemBuilder: (ctx, index) {
      return Container(
        width: double.maxFinite,
        child: Center(child: Text("Page $index",style: TextStyle(fontSize: 40),)),
      );
    });
  }
}
