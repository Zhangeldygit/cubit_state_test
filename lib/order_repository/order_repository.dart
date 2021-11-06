
import 'package:getxflutterapicall/order_model/order_model.dart';

class OrderRepository {

  OrderRepository();
  List<Order> getOrders()  {
    final orders = [
      Order(
          address: 'Подъезд 5, этаж 3, кв 57',
          orderId: 234,
          time: '17:46',
          comments: 'Подъезд 5, этаж 3, кв 57, как вьедите во двор, сразу 5 подъезд будет справа если что, домофон код 1342'
      ),
      Order(
          address: 'Подъезд 5, этаж 3, кв 57',
          orderId: 234,
          time: '17:46',
          comments: 'Подъезд 5, этаж 3, кв 57, как вьедите во двор, сразу 5 подъезд будет справа если что, домофон код 1342'
      ),
      Order(
          address: 'Подъезд 5, этаж 3, кв 57',
          orderId: 234,
          time: '17:46',
          comments: 'Подъезд 5, этаж 3, кв 57, как вьедите во двор, сразу 5 подъезд будет справа если что, домофон код 1342'
      ),
      Order(
          address: 'Подъезд 5, этаж 3, кв 57',
          orderId: 234,
          time: '17:46',
          comments: 'Подъезд 5, этаж 3, кв 57, как вьедите во двор, сразу 5 подъезд будет справа если что, домофон код 1342'
      )

    ];
    return orders;
  }
}