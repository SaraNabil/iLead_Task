import 'package:flutter/material.dart';
import 'package:ilead_task/componants/slider_item.dart';
import 'package:ilead_task/model/slider_models/slider_list_model.dart';
import 'package:ilead_task/network/api.dart';

class SliderWidget extends StatefulWidget {
  SliderWidget({Key key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  var response;
  @override
  void initState() {
    super.initState();
    response = Api.getSliderData();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.30,
      width: width,
      child: FutureBuilder<SliderListModel>(
        future: response,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data.data[0].category);
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.data.length,
              itemBuilder: (context, index) => SliderItem(
                data: snapshot.data.data[index],
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
