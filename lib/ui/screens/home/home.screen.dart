import 'package:flutter/material.dart';
import 'package:lobaton/ui/components/appbar.component.dart';
import 'package:lobaton/ui/components/loader.component.dart';
import 'package:lobaton/ui/screens/home/arrow.component.dart';
import 'package:lobaton/ui/screens/home/divisa_input.component.dart';
import 'package:provider/provider.dart';
import './../../../providers/divisa.provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final colorFinal = Color(0XFF603eca);

  void selectTab(Divisas divisa) {
    final divisaProvider = Provider.of<DivisaProvider>(context, listen: false);
    divisaProvider.changeDivisa(divisa);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Text('oe q fue'),
      appBar: AppBarComponent(
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Center(
                    child: Text(
                  'Cambia dinero de forma segura y ctmre porque ctmre',
                  style: TextStyle(fontSize: 25, color: Color(0XFF07001d)),
                  textAlign: TextAlign.center,
                )),
              ),
              _renderCajaContenedora(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderCajaContenedora() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          _renderHeaderPrices(),
          SizedBox(
            height: 20,
          ),
          _renderBodyForm(),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Gana 0.58 más que en el banco.",
              style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0XFF07001d)
            ),),
          ),
          _renderButtonStartOperation(),
          _renderInfoPreferentialRates(),
        ],
      ),
    );
  }

  Widget _renderBodyForm() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffdcdcdc), borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.all(25),
      child: Column(
        children: <Widget>[
          DivisaInputDollarComponent(),
          SizedBox(
            height: 20,
          ),
          ArrowComponent(),
          DivisaInputDollarComponent()
        ],
      ),
      
    );
  }

  Widget _renderHeaderPrices() {
    final divisaProvider = Provider.of<DivisaProvider>(context, listen: true);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: GestureDetector(
            onTap: () => selectTab(Divisas.dollar),
            child: Container(
                margin: EdgeInsets.only(bottom: 5, right: 10),
                child: Text(
                  'Compra 3.4970',
                  style: TextStyle(fontSize: 16),
                )),
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 3,
                      color: divisaProvider.divisaSelected == Divisas.dollar
                          ? Theme.of(context).primaryColor
                          : Colors.grey))),
        ),
        Container(
          child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Text(
                '|',
                style: TextStyle(fontSize: 16),
              )),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 3, color: Colors.grey))),
        ),
        Container(
          child: GestureDetector(
            onTap: () => selectTab(Divisas.sol),
            child: Container(
                margin: EdgeInsets.only(bottom: 5, left: 10),
                child: Text(
                  'Venta 3.4970',
                  style: TextStyle(fontSize: 16),
                )),
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 3,
                      color: divisaProvider.divisaSelected == Divisas.sol
                          ? Theme.of(context).primaryColor
                          : Colors.grey))),
        ),
      ],
    );
  }

  Widget _renderButtonStartOperation() {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        padding: EdgeInsets.all(15),
        textColor: Colors.white,
        color: Theme.of(context).primaryColor,
        onPressed: () => {},
        child: new Text("Iniciar operación", style: TextStyle(fontSize: 18.0))
      )
    );
  }

  Widget _renderInfoPreferentialRates() {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 0, right: 1, left: 0),
        child: Text(
          "Tipo de cambio preferencial para montos mayores a 5,000.00 o S/ 15,000.00. Hacer clic",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17, color: Color(0XFF463d60)),

        )
    );
  }
}
