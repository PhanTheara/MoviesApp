import 'package:flutter/material.dart';
import 'package:movies_app/Row_Titel_wedge.dart';
import 'package:movies_app/movies_usable_wedget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final List movieslist =[
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
    'https://m.media-amazon.com/images/M/MV5BMDQ5MmJhODgtMjMzYi00Nzc3LTk5MDUtYTkwMTkzM2RlNjEzXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
    
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn1zN73JPWdm7_k2spgDUvJ-gpBZnJMYtiWg&s',
   
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        title: const Text('Movies Mobile App',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
        actions: const  [
          CircleAvatar(
            radius: 50,
            backgroundColor: Color(2),
            backgroundImage: NetworkImage('https://e1.pngegg.com/pngimages/163/202/png-clipart-lee-min-ho.png',),
          )
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const RowTitel(Titel: 'Recommentded For you',
            subTitel: 'Seell all',
            ),
            const SizedBox(
                height: 20,
            ),
            // ignore: sized_box_for_whitespace
            movieswidget(movieslist: movieslist),
            const SizedBox(
                height: 10,
            ),

            const RowTitel(Titel: 'popular Movies',
            subTitel: 'Seell all',
            ),
            const SizedBox(
                height: 20,
            ),
            // ignore: sized_box_for_whitespace
            movieswidget(movieslist: movieslist),
            const SizedBox(
                height: 10,
            ),

            const RowTitel(Titel: 'Comeing Soon',
            subTitel: 'Seell all',
            ),
            const SizedBox(
                height: 20,
            ),
            // ignore: sized_box_for_whitespace
            movieswidget(movieslist: movieslist),
            const SizedBox(
                height: 20,
            ),

          ],
        ),
      ),
    );
  }
}



