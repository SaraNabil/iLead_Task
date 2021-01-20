import 'package:flutter/material.dart';
import 'package:ilead_task/componants/property_item.dart';
import 'package:ilead_task/model/property_models/property_list_model.dart';
import 'package:ilead_task/network/api.dart';

class PropertyWidget extends StatefulWidget {
  @override
  _PropertyWidgetState createState() => _PropertyWidgetState();
}

class _PropertyWidgetState extends State<PropertyWidget> {
  var response;
  @override
  void initState() {
    super.initState();
    response = Api.getPropertyData();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * 0.42,
      child: FutureBuilder<PropertyList>(
          future: response,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.data.length,
                itemBuilder: (context, index) => PropertyItem(
                  data: snapshot.data.data[index],
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
