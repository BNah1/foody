import 'package:flutter/material.dart';

import '../../config/const.dart';

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
            key: ValueKey<int>(index),
            onDismissed: (DismissDirection direction) {
              // setState(() {
              //   items.removeAt(index);
              // });
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: double.infinity,
                height: 120,
                child: GridTile(
                  footer: GridTileBar(
                    backgroundColor: Colors.white60,
                    title: Text(
                      'xxxxxx',
                      style: styleTileItem,
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(image1))),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
