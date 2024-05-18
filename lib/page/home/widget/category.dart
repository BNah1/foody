import 'package:flutter/material.dart';

import '../../../config/const.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(10),
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            width: double.infinity,
            height: 200,
            child: GridTile(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://images.unsplash.com/photo-1715966966827-25a227141ee9?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    fit: BoxFit.cover),
              ),
              footer: GridTileBar(
                title: Center(
                  child: Text(
                    'xxxxxxxxxxxxx',
                    style: styleTileItem,
                  ),
                ),
                subtitle:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.hearing,
                    color: Colors.black,
                  ),
                  Text('xxx', style: styleTileIcon),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.view_agenda, color: Colors.black),
                  Text('xxx', style: styleTileIcon),
                  SizedBox(width: 10)
                ]),
                backgroundColor: dColorFooterImage,
              ),
            ),
          );
        });
  }
}
