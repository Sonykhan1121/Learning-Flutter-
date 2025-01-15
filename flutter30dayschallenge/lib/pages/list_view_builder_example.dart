import 'package:flutter/material.dart';

import '../domain/entity/list_data_entity.dart';

class ListViewBuilderExample extends StatelessWidget {
  final data = ListEntity.listdata;
   ListViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewBuilder Example'),
      ),
      body: ListView.builder(

        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 45,
              width: 45,
              child: Image.asset(data[index].image!),
            ),
            trailing: Icon(Icons.abc_rounded),
            subtitle: Text('Using this app'),
            title: Text(' ${data[index].title}'),
          );
        },
        itemCount: data.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
