import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_model/order_model.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({Key key, this.order}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 7),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        height: 255,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Адрес', style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 5),
                  Text(order.address, style: TextStyle(fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            Divider(
              height: 2,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Заказ #' + '${order.orderId}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                          SizedBox(width: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            padding: EdgeInsets.all(5),
                            child: Text('Еда', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          ),
                        ],
                      ),
                      Text(order.time, style: TextStyle(fontSize: 23),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text('Комментарий',style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 9,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(child: Text(order.comments, softWrap: true,)),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(CupertinoIcons.phone, color: Colors.black),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(15),
                                    primary: Colors.white, // <-- Button color
                                    onPrimary: Colors.transparent, // <-- Splash color
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(CupertinoIcons.bars, color: Colors.black),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                  primary: Colors.white, // <-- Button color
                                  onPrimary: Colors.transparent, // <-- Splash color
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Связаться\nс клиентом', softWrap: true, style: TextStyle(fontSize: 13),),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text('Детали',style: TextStyle(fontSize: 13),),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
