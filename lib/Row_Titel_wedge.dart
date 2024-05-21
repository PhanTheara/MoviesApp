import 'package:flutter/material.dart';
import 'package:movies_app/popular_screen.dart';
class RowTitel extends StatelessWidget {
  const RowTitel({
    super.key,
    required  this.Titel,
    required this.subTitel,
  });
  final String Titel;
  final String subTitel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          Titel,
        style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
        InkWell(
           onTap: (){
            subTitel;
            Navigator.push(context, MaterialPageRoute(builder:(context)=> popularscreen()));
           },
          child: const Text(
            'See all',style: TextStyle(color: Colors.deepPurple),
            ),
        )
      ],
    );
  }
}