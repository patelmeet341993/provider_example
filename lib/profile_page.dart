import 'package:flutter/material.dart';
import 'package:flutter_app/profile_data.dart';
import 'package:flutter_app/profile_data1.dart';
import 'package:flutter_app/profile_widget.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

 late ProfileData pd;
 late ProfileData1 pd1;


 @override
  Widget build(BuildContext context) {

    pd=Provider.of<ProfileData>(context,listen: false);
    pd1=Provider.of<ProfileData1>(context,listen: false);


    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          children: [
            ProfileWidget(),
            SizedBox(height: 10,),
            Text("Change Name"),
            Row(
              children: [
                myBtn("ABC", () {

                  pd.changeName("ABC");

                }),
                myBtn("XYZ", () {

                  pd.changeName("XYZ");
                }),
                myBtn("MMM", () {

                  pd.changeName("MMM");
                }),
              ],
            ),
            SizedBox(height: 10,),
            Text("Change Profile"),
            Row(
              children: [
                myBtn("Img1", () {



                  pd1.changeUrl("https://www.pinkvilla.com/files/styles/app-section/public/fresh_pairings_in_bollywood_main.jpg?itok=CAt9WUSI");

                }),
                myBtn("Img2", () {

                  pd1.changeUrl("https://www.pinkvilla.com/files/styles/app-section/public/prince_harry_meghan_markle__1.jpeg?itok=uI0kYrFu");

                }),
                myBtn("Img3", () {
                  pd1.changeUrl("https://www.pinkvilla.com/files/styles/app-section/public/akshay_kumar_sooryavanshi_main.jpg?itok=qYXVlhLX");
                }),
              ],
            )
          ],
        ),
      ),
    ));
  }

  Widget myBtn(String title, Function onclick) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onclick();
          print("value chahge");
        },
        child: Container(
          margin: EdgeInsets.all(5),
          color: Colors.blue,
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
