import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lista_compras/produtospages/bebidas.dart';
import 'package:lista_compras/produtospages/laticinios.dart';

class Produtos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Compras'),
          centerTitle: true,
          backgroundColor: Colors.yellow[400],
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue[300]),
                      ),
                      child: Image.asset('assets/images/laticinios.png'),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => Laticinios(),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.yellow[300]),
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/images/farinacios.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red[300]),
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/images/carnes.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green[300]),
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/images/legumes.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.purple[200]),
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/images/frutas.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.orange[300]),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => Bebidas(),
                          ),
                        );
                      },
                      child: Image.asset('assets/images/bebidas.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
