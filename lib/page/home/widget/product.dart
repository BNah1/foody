import 'dart:core';

import 'package:flutter/material.dart';
import 'package:foody/config/const.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dColorMain,
        title: Text('Ten mon an'),
      ),
      body: Column(children: [
        Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image1))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite),
                        SizedBox(
                          width: 10,
                        ),
                        Text('111')
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.view_agenda),
                        SizedBox(
                          width: 10,
                        ),
                        Text('111')
                      ],
                    ),
                  )
                ],
              ),
            )),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(textTest),
                  SizedBox(
                    height: 20,
                  ),
                  FoodDetail(title: 'Cong thuc', text: textTest),
                  SizedBox(
                    height: 20,
                  ),
                  FoodDetail(title: 'Cong thuc', text: textTest)
                ],
              ),
            ))
      ]),
    );
  }
}

class FoodDetail extends StatelessWidget {
  FoodDetail({Key? key, required this.title, required this.text})
      : super(key: key);

  final title;
  final text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            color: Colors.grey,
          ),
          child: Text(
            title,
            style: styleTileItem,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          child: Text(textTest, style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
