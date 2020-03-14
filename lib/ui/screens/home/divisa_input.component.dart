import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './../../../providers/divisa.provider.dart';

class DivisaInputDollarComponent extends StatefulWidget {
  DivisaInputDollarComponent({Key key}) : super(key: key);

  @override
  _DivisaInputDollarComponentState createState() =>
      _DivisaInputDollarComponentState();
}

class _DivisaInputDollarComponentState
    extends State<DivisaInputDollarComponent> {
  @override
  Widget build(BuildContext context) {
    final divisaProvider = Provider.of<DivisaProvider>(context);

    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Text(
            divisaProvider.divisaSelected == Divisas.dollar
                ? 'Envio dolares '
                : 'Envio soles',
            style: TextStyle(
                color: Color(0XFF463d60),
                fontSize: 16,
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.start,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Monto minimo : 60.00',
            style: TextStyle(fontSize: 12),
          ),
        ),
        TextField(
          textAlign: TextAlign.end,
          style: TextStyle(fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: divisaProvider.divisaSelected == Divisas.dollar
                  ? Icon(Icons.attach_money)
                  : Icon(Icons.money_off),
              labelText: ''),
        ),
      ],
    );
  }
}
