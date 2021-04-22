import 'package:flutter/material.dart';
import 'package:lista_compras/repository/lista.repository.dart';
import 'package:lista_compras/views/mercado.lista.dart';
import 'package:lista_compras/views/produtos.page.dart';
import 'package:lista_compras/models/lista.model.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

enum cor { AZUL, VERDE }

class _ListaPageState extends State<ListaPage> {
  final repository = ListaRepository();

  List<Lista> listas;

  @override
  initState() {
    super.initState();
    this.listas = repository.read();
  }

  Future adicionarLista(BuildContext context) async {
    {
      //context = estado atual da tela
      var result = await Navigator.of(context).pushNamed('/nova');
      setState(() {
        if (result == true && result != null) {
          this.listas = repository.read();
        }
      });
    }
  }

  Future atualizarLista(BuildContext context, Lista lista) async {
    {
      var result = await Navigator.of(context).pushNamed(
        '/edita',
        arguments: lista,
      );
      if (result == true && result != null) {
        setState(() => this.listas = repository.read());
      }
    }
  }

  Future confirmarExecucao(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) {
        return AlertDialog(
          title: Text("Confirma a exclusão?"),
          actions: [
            FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text("NÃO"),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text("SIM"),
            ),
          ],
        );
      },
    );
  }

  bool canEdit = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Compras'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
//----------------------------------------------------------------------------------
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Listas'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Lista1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Nova lista'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Mercados'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => MercadoLista(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Produtos'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Produtos(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
//-------------------------------------------------------------------------------
      body: RefreshIndicator(
        onRefresh: () {
          //Navigator.of(context).pushNamed('/');
        },
        child: ListView.builder(
          itemCount: repository.read().length,
          itemBuilder: (_, indice) {
            var lista = listas[indice];
            return Dismissible(
              key: Key(lista.texto),
              background: Container(color: Colors.red, child: Text("Apagar")),
              onDismissed: (direction) {
                if (direction == DismissDirection.endToStart) ;
                {
                  repository.delete(lista.texto);
                  setState(() => this.listas.remove(lista));
                }
                if (direction == DismissDirection.startToEnd) {
                  //invoca o médoto atualizar
                }
              },
              confirmDismiss: (direction) {
                if (direction == DismissDirection.endToStart) {
                  return confirmarExecucao(context);
                }
              },
              child: CheckboxListTile(
                value: lista.finalizada,
                title: Row(
                  children: [
                    canEdit
                        ? IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () => atualizarLista(context, lista))
                        : Container(),
                    Text(lista.texto,
                        style: TextStyle(
                          decoration: lista.finalizada
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        )),
                  ],
                ),
                onChanged: (value) {
                  setState(() {
                    lista.finalizada = value;
                  });
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => adicionarLista(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
