import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getxflutterapicall/main_screen.dart';
import 'package:getxflutterapicall/order_bloc/order_cubit.dart';
import 'package:getxflutterapicall/order_repository/order_repository.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BlocProvider<OrderCubit>(
      create: (context) => OrderCubit(
        repository: OrderRepository()
      ),
      child: MainScreen(),
    ),
  ));
}

