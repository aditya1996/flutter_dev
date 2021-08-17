import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    // Properties of the object cannot be changed after the object has been created
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
