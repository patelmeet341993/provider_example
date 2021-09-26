import 'package:flutter/material.dart';
import 'package:flutter_app/profile_data.dart';
import 'package:provider/provider.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return Consumer<ProfileData>(builder: (ctx, model, _) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
              model.url),
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
