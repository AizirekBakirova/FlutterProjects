import 'package:flutter/material.dart';
import 'package:sabak_13_oop_01_class/features/data/book_method.dart';

class BookListWidget extends StatelessWidget {
  const BookListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.orange,
            child: ListTile(
              title: Text(
                bookList[index].bookName,
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                '${bookList[index].pageNumber.toString()} bet',
                style: TextStyle(fontSize: 15),
              ),
            ),
          );
        });
  }
}
