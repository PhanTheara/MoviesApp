import 'package:flutter/material.dart';
// ignore: camel_case_types
class movieswidget extends StatelessWidget {
  const movieswidget({
    super.key,
    required this.movieslist,
  });

  final List movieslist;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movieslist.length,
        itemBuilder: (context, index){
          // ignore: avoid_unnecessary_containers
          return   Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(movieslist[index],fit: BoxFit.cover,height: 200,width: 200,)
                ),
            ),
          );
        },
      ),
    );
  }
}