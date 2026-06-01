import '../models/item_biblioteca.dart';

class Biblioteca {
  final List<ItemBiblioteca> acervo = [];

  void adicionar(ItemBiblioteca item) {
    acervo.add(item);
  }

  void listarEstoque() {
    print("\n========== ACERVO ==========\n");

    for (var item in acervo) {
      item.exibirDetalhes();
    }
  }

  ItemBiblioteca? buscarPorTitulo(String titulo) {
    try {
      return acervo.firstWhere(
        (item) =>
            item.titulo.toLowerCase() ==
            titulo.toLowerCase(),
      );
    } catch (_) {
      return null;
    }
  }

  void rankingEmprestimos() {
    List<ItemBiblioteca> ranking = [...acervo];

    ranking.sort(
      (a, b) =>
          b.totalEmprestimos.compareTo(
            a.totalEmprestimos,
          ),
    );

    print("\n ITENS MAIS EMPRESTADOS\n");

    for (var item in ranking) {
      print(
          "${item.titulo} -> ${item.totalEmprestimos} empréstimos");
    }
  }
}
