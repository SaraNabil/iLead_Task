import 'package:flutter/material.dart';
import 'package:ilead_task/custom_icons/custom_icons_icons.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.07,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
            SizedBox(
              width: width * 0.01,
            ),
            Expanded(
              child: Text(
                'e.g. Abu Dhabi',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),
            ),
            Text(
              'Filter',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              width: width * 0.01,
            ),
            Icon(
              CustomIcons.filter,
              color: Theme.of(context).accentColor,
            ),
          ],
        ),
      ),
    );
  }
}
