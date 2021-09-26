import 'package:flutter/material.dart';
import 'package:flutter_app/profile_data.dart';
import 'package:flutter_app/profile_data1.dart';
import 'package:provider/provider.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return Consumer2<ProfileData,ProfileData1>(builder: (ctx, model,model1, _) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
              model1.url),
          SizedBox(
            height: 10,
          ),
          Text(model.name,style: TextStyle(
            color: Colors.orange,
            fontSize: 30,
            fontWeight: FontWeight.w600
          ),)
        ],
      );
    });
  }
}
