import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final Color colorFinal = Colors.red;
  final AppBar appBar;
  final String titulo;

  const AppBarComponent({Key key, this.appBar, this.titulo}) : super(key: key);

  AppBar build(BuildContext context) {
    print(titulo);
    return AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 7,
        iconTheme: Theme.of(context).iconTheme,
        title: Container(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
                'https://dkcih82i8p5bk.cloudfront.net/static/logo_cambio_seguro.png',
                width: 140),
          ),
        ));
  }

  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
