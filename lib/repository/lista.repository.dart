import 'package:flutter/material.dart';
import 'package:lista_compras/models/lista.model.dart';

class ListaRepository {
  static List<Lista> listas = List<Lista>();

  ListaRepository() {
    if (listas.isEmpty) {
      Text('Sua lista está vazia!');
    }
  }

  void crate(Lista lista) {
    listas.add(lista);
  }

  List<Lista> read() {
    return listas;
  }

  void delete(String texto) {
    final lista = listas.singleWhere((t) => t.texto == texto);
    listas.remove(lista);
  }

  void update(Lista newLista, Lista oldLista) {
    final lista = listas.singleWhere((t) => t.texto == oldLista.texto);
    lista.texto = newLista.texto;
  }
}
