// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/product_list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 231, 231),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 35,
                  onPressed: () {},
                  icon: Icon(Icons.navigate_before_rounded),
                ),
                Text(
                  'Search Product',
                  style: GoogleFonts.roboto(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        "https://lh3.googleusercontent.com/a-/AOh14Giha5dYmoN_G3Q8OhLwM_fMFvxagpZGQdjJE8qjGQ=s576-p-rw-no",
                        width: 50,
                      )),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "Search",
                                border: InputBorder.none)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image.network(
                      "https://cdn0.iconfinder.com/data/icons/basic-ui-line-7/32/line_basic_uiFilter-512.png",
                      height: 30,
                      width: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(40, 49),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
