import 'package:lista_compras/models/produto.model.dart';

class ProdutoRepository {
  static List<Produto> produto = List<Produto>();

  ProdutoRepository() {
    if (produto.isEmpty) {
      
  }

  List<Produto> read() {
    return produto;
  }
  /*
  void crate(Produto produto) {
    produto.add(produto);
  }

  List<Produto> read() {
    return produto;
  }

  void delete(String texto) {
    final produto = produto.singleWhere((t) => t.texto == texto);
    produto.remove(produto);
  }

  void update(Produto newProduto, Produto oldProduto) {
    final tarefa = produto.singleWhere((t) => t.texto == oldProduto.texto);
    tarefa.texto = newProduto.texto;
  }*/
}
