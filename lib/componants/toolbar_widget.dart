import 'package:flutter/material.dart';

class ToolBarWidget extends StatelessWidget {
  const ToolBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Rent',
          style: TextStyle(fontSize: 18, color: Theme.of(context).accentColor,fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(Icons.arrow_drop_down, size: 35,color:  Theme.of(context).accentColor,),
      ],
    );
  }
}
