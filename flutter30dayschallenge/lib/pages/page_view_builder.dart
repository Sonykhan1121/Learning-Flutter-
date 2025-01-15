import 'package:flutter/material.dart';

import '../domain/entity/list_data_entity.dart';

class PageViewBuilder extends StatelessWidget {
  final data = ListEntity.listdata;
  PageViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View Builder'),
        backgroundColor: Colors.red,
      ),
      body: PageView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Center(child: Text(' ${data[index].title}')),
          );
        },
      ),
    );
  }
}
