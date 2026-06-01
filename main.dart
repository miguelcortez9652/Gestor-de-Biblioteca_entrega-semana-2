import 'models/livro.dart';
import 'models/revista.dart';
import 'services/biblioteca.dart';

void main() {
  Biblioteca biblioteca = Biblioteca();

  biblioteca.adicionar(
    Livro(
      titulo: "Clean Code",
      autor: "Robert Martin",
      isbn: 1111,
      anoPublicacao: 2008,
      quantidadeCopias: 5,
    ),
  );

  biblioteca.adicionar(
    Livro(
      titulo: "Design Patterns",
      autor: "GoF",
      isbn: 2222,
      anoPublicacao: 1994,
      quantidadeCopias: 3,
    ),
  );

  biblioteca.adicionar(
    Livro.classico(
      titulo: "Dom Casmurro",
      autor: "Machado de Assis",
      isbn: 3333,
    ),
  );

  biblioteca.adicionar(
    Revista(
      titulo: "Superinteressante",
      numeroEdicao: 101,
      mesPublicacao: "Janeiro",
      anoPublicacao: 2026,
      quantidadeCopias: 4,
    ),
  );

  biblioteca.adicionar(
    Revista(
      titulo: "Ciência Hoje",
      numeroEdicao: 88,
      mesPublicacao: "Março",
      anoPublicacao: 2026,
      quantidadeCopias: 2,
    ),
  );

  biblioteca.adicionar(
    Revista.criarPadrao(),
  );

  biblioteca.listarEstoque();

  print("\n====== EMPRÉSTIMOS ======\n");

  for (var item in biblioteca.acervo) {
    item.emprestar();
  }

  print("\n====== DEVOLUÇÕES ======\n");

  List<int> dias = [10, 5, 12, 8, 3, 15];

  for (int i = 0;
      i < biblioteca.acervo.length;
      i++) {
    var item = biblioteca.acervo[i];

    double valor =
        item.devolver(dias[i]);

    print("""
Item: ${item.titulo}
Dias utilizados: ${dias[i]}
Valor a pagar: R\$ ${valor.toStringAsFixed(2)}

""");
  }

  print("\n====== BUSCA ======\n");

  var busca =
      biblioteca.buscarPorTitulo(
    "Clean Code",
  );

  if (busca != null) {
    busca.exibirDetalhes();
  }

  biblioteca.rankingEmprestimos();

  print("\n====== ESTOQUE FINAL ======\n");

  biblioteca.listarEstoque();
}
