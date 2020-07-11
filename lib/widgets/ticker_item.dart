import 'package:flutter/material.dart';

class TickerItem extends StatelessWidget {
  final String quote;
  final String companyName;
  final double price;
  final double change;

  TickerItem({
    this.quote,
    this.companyName,
    this.price,
    this.change,
  });

  void _selectTicker() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectTicker,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        color: Colors.white12,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCompanyWidget(),
                  _buildPriceWidget(),
                ],
              ),
            ),
            //Row(),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceWidget() {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: change < 0 ? Colors.red : Colors.green,
            ),
            child: Text(
              change > 0 ? ('+$change') : ('$change'),
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
          ),
          SizedBox(height: 6.0),
          Text(
            ('$price'),
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            softWrap: true,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }

  Widget _buildCompanyWidget() {
    return Expanded(
      flex: 7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            quote,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            softWrap: true,
            overflow: TextOverflow.fade,
          ),
          SizedBox(height: 8.0),
          Text(
            companyName,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
            softWrap: true,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
