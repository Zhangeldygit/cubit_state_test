import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getxflutterapicall/oder_card.dart';
import 'package:getxflutterapicall/order_bloc/order_cubit.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          if (state is OrderLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is OrderError) {
            return Center(
              child: Icon(Icons.close),
            );
          } else if (state is OrderSuccess) {
            final order = state.orders;

            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/map.jpg'),
                  fit: BoxFit.cover
                ),
                color: Colors.white,
              ),
              child: DraggableScrollableSheet(
                  initialChildSize: 0.2,
                  maxChildSize: 0.9,
                  minChildSize: 0.1,
                  builder: (BuildContext context, scrollController) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: order.length,
                        itemBuilder: (context, index) => OrderCard(order: state.orders[index],),
                      ),
                    );
                  }
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
