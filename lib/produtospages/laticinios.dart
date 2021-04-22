import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Laticinios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laticinios'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const <Widget>[
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/laticinios.png"),
                  ),
                  title: Text('Leite Natural'),
                  subtitle: Text('descricao'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  //onTap: () => ,
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/laticinios.png"),
                  ),
                  title: Text('Leite Desnatado'),
                  subtitle: Text('descricao'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/laticinios.png"),
                  ),
                  title: Text('Manteiga'),
                  subtitle: Text('descricao'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/laticinios.png"),
                  ),
                  title: Text('Queijo'),
                  subtitle: Text('descricao'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/laticinios.png"),
                  ),
                  title: Text('Iogurt'),
                  subtitle: Text('descricao'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/laticinios.png"),
                  ),
                  title: Text('Ovo'),
                  subtitle: Text('descricao'),
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
