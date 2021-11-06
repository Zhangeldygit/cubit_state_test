part of 'order_cubit.dart';

@immutable
abstract class OrderState {}

class OrderInitial extends OrderState {
  final List<Order> orders = [];
}

class OrderLoading extends OrderState {}

class OrderSuccess extends OrderState {
  final List<Order> orders;

  OrderSuccess(this.orders);
}

class OrderError extends OrderState {
  final String message;
  OrderError(this.message);

  @override
  String toString() => message;
}
