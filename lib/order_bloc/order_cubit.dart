import 'package:bloc/bloc.dart';
import 'package:getxflutterapicall/order_model/order_model.dart';
import 'package:getxflutterapicall/order_repository/order_repository.dart';
import 'package:meta/meta.dart';

part 'order_state.dart';


class OrderCubit extends Cubit<OrderState> {
  OrderCubit({@required this.repository}) : super(OrderInitial()) {
    getOrders();
  }
  final OrderRepository repository;
  void getOrders() async {
    try {
      emit(OrderLoading());
      final orders = await repository.getOrders();
      emit(OrderSuccess(orders));
    } catch (e) {
      emit(OrderError(e.toString()));
    }
  }
}

