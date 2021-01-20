import 'package:flutter/material.dart';
import 'package:ilead_task/model/slider_models/data.dart';
import '../custom_icons/custom_icons_icons.dart';

class SliderItem extends StatelessWidget {
  final SliderData data;
  const SliderItem({@required this.data});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(15),
          ),
          height: height * 0.30,
          width: width * 0.9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: data.propertyImages[0] == null
                ? Image.asset(
                    'assets/images/placeholder.png',
                    fit: BoxFit.fill,
                  )
                : Image.network(
                    data.propertyImages[0].url,
                    fit: BoxFit.fill,
                  ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15)),
            child: Stack(
              children: [
                Container(
                  height: height * 0.15,
                  width: width * 0.9,
                  color: Colors.white54,
                ),
                Container(
                  height: height * 0.15,
                  width: width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '${data.category}',
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.grey[700]),
                              ),
                            ),
                            Text(
                              '${data.price}',
                              style: TextStyle(fontSize: 18.0),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(CustomIcons.bed),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text('${data.bedRoom}'),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Row(
                              children: [
                                Icon(CustomIcons.bath),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text('${data.bathRoom}'),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Row(
                              children: [
                                Icon(CustomIcons.map),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text('${data.areaSpace}'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
