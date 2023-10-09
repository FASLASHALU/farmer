import 'package:farmer/Widget/cuts_wid.dart';
import 'package:farmer/Widget/exotic_wid.dart';
import 'package:farmer/Widget/fruits_wid.dart';
import 'package:farmer/Widget/gourment_wid.dart';
import 'package:farmer/Widget/home_wid.dart';
import 'package:farmer/Widget/nutrition_wid.dart';
import 'package:farmer/Widget/offer_wid.dart';
import 'package:farmer/Widget/packed_wid.dart';
import 'package:farmer/Widget/sub_wid.dart';
import 'package:farmer/Widget/veg_wid.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 10,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: AssetImage("asset/logo.png"),
                  height: 32,
                )
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 60,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.green)),
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.black54,
                  ),
                ),
              )
            ],
            title: Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
                Text(
                  "Kochi",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Colors.green,
                child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    indicatorWeight: 3,
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    tabs: [
                      Container(
                        width: 60,
                        child: Tab(
                          child: Row(
                            children: [
                              Text("Home"),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        child: Tab(child: Text('Offers')),
                      ),
                      Container(
                        width: 80,
                        child: Tab(child: Text('Vegitables')),
                      ),
                      Container(
                        width: 60,
                        child: Tab(child: Text('Fruits')),
                      ),
                      Container(
                        width: 60,
                        child: Tab(child: Text('Exotic')),
                      ),
                      Container(
                        width: 60,
                        child: Tab(child: Text('Frush cuts')),
                      ),
                      Container(
                        width: 80,
                        child: Tab(child: Text('Nutrition charges')),
                      ),
                      Container(
                        width: 60,
                        child: Tab(child: Text('Packed flavors')),
                      ),
                      Container(
                        width: 80,
                        child: Tab(child: Text('Gourment salads')),
                      ),
                      Container(
                        width: 110,
                        child: Tab(
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                height: 25,
                                width: 110,
                                child: Center(
                                  child: Text(
                                    'Subscription',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ))),
                      )
                    ]),
              ),
           Flexible(
                flex: 1,
                child: TabBarView(children: [
                  home_wid(),
                  offer_wid(),
                  veg_wid(),
                  fruits_wid(),
                  exotic_wid(),
                  cuts_wid(),
                  nutrition_wid(),
                  packed_wid(),
                  gourment_wid(),
                  sub_wid()
                ])) ],
          ),
        ));
  }
}
