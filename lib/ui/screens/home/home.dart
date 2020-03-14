import 'package:flutter/material.dart';
import 'package:lobaton/ui/components/appbar.component.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final colorFinal = Color(0XFF603eca);
  int tabSelected = 1;

  void selectTab(int index) {
    tabSelected = index;

    this.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Text('oe q fue'),
      appBar: AppBarComponent(
        appBar: AppBar(),
      ),
      body: Container(
        color: Colors.grey[100],
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
          ],
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
          Container(
            width: double.infinity,
            child: Text(
              'Envio soles',
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
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.attach_money),
                labelText: ''),
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 18),
                child: SizedBox(
                  width: double.infinity,
                  height: 1,
                  child: Container(
                    color: Colors.grey[400],
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Transform.rotate(
                      angle: 90 * 3.1415 / 180,
                      child: Container(
                        child: Icon(
                          Icons.compare_arrows,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            child: Text(
              'Envio dolares',
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
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.attach_money),
                labelText: ''),
          ),
        ],
      ),
    );
  }

  Widget _renderHeaderPrices() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: GestureDetector(
            onTap: () => selectTab(1),
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
                      color: tabSelected == 1
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
            onTap: () => selectTab(2),
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
                      color: tabSelected == 2
                          ? Theme.of(context).primaryColor
                          : Colors.grey))),
        ),
      ],
    );
  }
}
