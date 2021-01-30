import 'package:flutter/material.dart';

class InStockButton extends StatefulWidget {
  Color _iconColor;
  InStockButton(this._iconColor);
  @override
  _InStockButtonState createState() => _InStockButtonState();
}

class _InStockButtonState extends State<InStockButton> {
 
  
  void _changeColor(){
    setState(() {
      if (widget._iconColor==Colors.green){
        widget._iconColor=Colors.red;
      }
      else{
        widget._iconColor=Colors.green;
      }
    });
  
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: _changeColor,
              color: widget._iconColor,
    );
  }
}
 