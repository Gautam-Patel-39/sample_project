import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample_project/models/article.dart';
import 'package:sample_project/views/article_view.dart';

class ArticleListItem extends StatelessWidget {

  final Article article;

  const ArticleListItem({super.key,required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleView(article: article)));
      },
      child: Card(
        elevation: 2.5,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(article.title,style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              Text(DateFormat('dd-MM-yyyy').format(article.date)),
            ],
          ),
        ),
      ),
    );
  }
}
