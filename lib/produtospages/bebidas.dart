import 'package:flutter/material.dart';

class Bebidas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bebidas'),
          centerTitle: true,
          backgroundColor: Colors.yellow[400],
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text("Água"),
                    color: Colors.orange[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Refrigerante'),
                    color: Colors.orange[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Suco'),
                    color: Colors.orange[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Cerveja'),
                    color: Colors.orange[300],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
