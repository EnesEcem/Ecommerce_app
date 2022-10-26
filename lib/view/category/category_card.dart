import 'dart:html';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/const.dart';
import 'package:ecommerce_app/model/question.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Question question;
  const CategoryCard({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 8,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Flexible(
            child: Center(
                child: CachedNetworkImage(
                    imageUrl: baseUrl + question.questionText)),
          )
        ]));
  }
}
