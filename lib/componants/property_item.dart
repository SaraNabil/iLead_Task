import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:ilead_task/custom_icons/custom_icons_icons.dart';
import 'package:ilead_task/model/property_models/data.dart';

class PropertyItem extends StatelessWidget {
  final Data data;
  const PropertyItem({@required this.data});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var hight = MediaQuery.of(context).size.height;

    return Container(
      height: hight * 0.20,
      width: width,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Container(
              width: width * 0.45,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                child: Carousel(
                    dotSize: 5.0,
                    autoplay: false,
                    dotSpacing: 15.0,
                    indicatorBgPadding: 5.0,
                    dotBgColor: Colors.transparent,
                    dotVerticalPadding: 5.0,
                    images: data.propertyImages
                        .map(
                          (image) => image.url == null
                              ? Image.asset(
                                  'assets/images/placeholder.png',
                                  fit: BoxFit.fill,
                                )
                              : Image.network(
                                  image.url,
                                  fit: BoxFit.cover,
                                ),
                        )
                        .toList()),
              ),
            ),
            Expanded(
              child: Container(
                width: width * 0.3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              '${data.category}',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Image.asset(
                            'assets/images/fire.png',
                            height: 16.0,
                            width: 16.0,
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Text(
                        '${data.price}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${data.address}',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                        maxLines: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Row(
                            children: [
                              Icon(CustomIcons.bath),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text('${data.bathRoom}'),
                            ],
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
