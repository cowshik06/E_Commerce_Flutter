// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/post.dart';
import 'package:flutter_ecommerce/pages/product_details.dart';
import 'package:flutter_ecommerce/services/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Post>? posts;
  //var item = 1;
  var isLoaded = false;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    posts = await RemoteService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 231, 231),
      body: Visibility(
        visible: isLoaded,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GridView.builder(
            itemCount: posts?.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7),
            itemBuilder: (context, index) {
              return /*item % 2 == 0
                  ?*/
                  Card(
                      /* margin: EdgeInsets.only(top: 100),*/
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductDetails(
                                            post: posts![index],
                                          ))),
                              child: Container(
                                margin: EdgeInsets.only(top: 19),
                                padding: EdgeInsets.all(20),
                                child: ColorFiltered(
                                  child: Image.network(
                                    posts![index].image,
                                    height: 100,
                                    width: 100,
                                  ),
                                  colorFilter: ColorFilter.mode(
                                      Color.fromARGB(255, 233, 231, 231),
                                      BlendMode.darken),
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 233, 231, 231),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                posts![index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "\$${posts![index].price.toString()}",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(MdiIcons.heart),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.black,
                                          shape: StadiumBorder()),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ));
              /* : Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Image.network(
                                posts![index].image,
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                posts![index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "\$${posts![index].price.toString()}",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(MdiIcons.heart),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.black,
                                          shape: StadiumBorder()),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ));
              item++;*/
            },
          ),
        ),
        replacement: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
