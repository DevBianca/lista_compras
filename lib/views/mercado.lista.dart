import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lista_compras/views/produtos.page.dart';

class MercadoLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercados'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const <Widget>[
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/market1.png"),
                  ),
                  title: Text('Mercado 1'),
                  subtitle: Text('R. Silver, 124 - Vila Gold, SJRP - SP'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/market2.png"),
                  ),
                  title: Text('Mercado 2'),
                  subtitle: Text('R. Green, 275 - Vila Brick, SJRP - SP'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/market3.png"),
                  ),
                  title: Text('Mercado 3'),
                  subtitle: Text('R. Silver, 396 - Vila Gold, SJRP - SP'),
                  
                  trailing: Icon(Icons.keyboard_arrow_right),
                  isThreeLine: true,
                ),
              ),
              //teste
              
            ],
          )),
    );
  }
}
