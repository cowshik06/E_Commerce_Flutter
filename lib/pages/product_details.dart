import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/post.dart';
import 'package:http/http.dart';

class ProductDetails extends StatefulWidget {
  final Post post;
  const ProductDetails({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Image.network()],
      ),
    );
  }
}
