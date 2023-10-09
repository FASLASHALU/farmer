import 'package:flutter/material.dart';

class cuts_wid extends StatefulWidget {
  const cuts_wid({super.key});

  @override
  State<cuts_wid> createState() => _cuts_widState();
}

class _cuts_widState extends State<cuts_wid> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Offers",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
           Column(
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: item.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 4,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.3),
                                  )
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                image[index],
                                width: 280,
                              ),
                               Text(
                                item[index],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(decription[index]),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Know your farmer',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                       Divider(
                                        color: Colors.black,
                                        height: 10,
                                        endIndent: 260,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'MRP:' + price[index],
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                         Text(
                                            oldPrice[index],
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.red,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 38,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.green),
                                    child: Center(
                                      child: Text(
                                        'ADD TO CART',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )),
                          );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    )  ;
  }

 List<dynamic> image = [
    "asset/cut family.jpg",
    "asset/cut family.jpg",
    "asset/Cabbage_cutsFFZ.jpg",
    "asset/Snakeg.jpg",
  ];
  List<String> item = [
    'Avial cut family pack 500g',
    'Avial cut mini pack 250g',
    'Cabbage :thoran cut(500g)',
    'Snake ground :thoran cut',
  ];
  List price = [
    '₹41.00',
    '₹72.00',
    '₹88.50',
    '₹40.00',
  ];
   List oldPrice = [
    '₹43.30',
    '₹85.05',
    '₹93.00',
    '₹44.85',
  ];

  List decription = [
    'red banana is a unique veriety of banana tha is native to india .it has a deep red',
    'One banana supplys 30 persantage of dailt vitamin B6 requirement and is rich in vitamin c and ',
    'Loaded with antioxidants and fiber, Chinese cabbage is the perfect addition to your daily',
    'Highly nutritious & crunchy, banana are a must-have in your healthy diet! The fiber in carrots',
  ];
}