import 'package:flutter/material.dart';
import '../widgets/book.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ceylon Bookstore'),
          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Book(
                coverImagePath: 'assets/images/71Lxne2PR-L._AC_UY371.25_FMwebp_.webp',
                title: 'FORGOTTEN DEAD',
                author: 'JORDAN L. HAWK',
                price: 3500,
              ),
              Book(
                coverImagePath: 'assets/images/81Nsv2ZdVBL._AC_UY372_FMwebp_.webp',
                title: 'SHARDS OF EARTH',
                author: 'ADRIAN TCHAIKOVSKY',
                price: 6000,
              ),
              Book(
                coverImagePath: 'assets/images/713ymChsldL._AC_UY372_FMwebp_.webp',
                title: 'LADY OF DARKNESS',
                author: 'MELISSA K. ROEHRICH',
                price: 1500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}