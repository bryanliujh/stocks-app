import 'package:flutter/material.dart';
import '../widgets/ticker_item.dart';
import '../MockItems.dart';

class TickerScreen extends StatelessWidget {
  static const routeName = '/ticker';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return TickerItem(
            quote: TICKER_LIST[index].quote,
            companyName: TICKER_LIST[index].companyName,
            price: TICKER_LIST[index].price,
            change: TICKER_LIST[index].change,
          );
        },
        itemCount: TICKER_LIST.length,
      ),
    );
  }
}
