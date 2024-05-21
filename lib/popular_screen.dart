import 'package:flutter/material.dart';

// ignore: camel_case_types
class popularscreen extends StatelessWidget {
  popularscreen({super.key});
  final List movieslist = [
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
    'https://m.media-amazon.com/images/M/MV5BMDQ5MmJhODgtMjMzYi00Nzc3LTk5MDUtYTkwMTkzM2RlNjEzXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
   // 'https://m.media-amazon.com/images/M/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn1zN73JPWdm7_k2spgDUvJ-gpBZnJMYtiWg&s',
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
    'https://mvlteenvoice.files.wordpress.com/2021/09/p_cruella_21672_ba40c762.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Popular',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    itemCount: movieslist.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(movieslist[index],fit: BoxFit.cover,)
                        );
                    }),
              )
            ],
          ),
        ));
  }
}
