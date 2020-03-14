import 'package:flutter/material.dart';
import 'package:lobaton/providers/divisa.provider.dart';
import 'package:provider/provider.dart';

class ArrowComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final divisaProvider = Provider.of<DivisaProvider>(context, listen: false);
    return Stack(
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
            child: InkWell(
              onTap: () => divisaProvider.toggleDivisa(),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Transform.rotate(
                  angle: 90 * 3.1415 / 180,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.compare_arrows,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
