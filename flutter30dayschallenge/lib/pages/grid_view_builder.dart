import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/domain/entity/list_data_entity.dart';

class GridViewBuilder extends StatelessWidget {
  final data = ListEntity.listdata;
   GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Builder'),
      ),
      body: GridView.builder(
        itemCount: data.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.deepOrange,
              child: Center(
                child: Text('${data[index].title}'),
              ),
            );
          }),
    );
  }
}
