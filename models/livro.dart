import 'item_biblioteca.dart';

class Livro extends ItemBiblioteca {
  String autor;
  int isbn;

  Livro({
    required this.autor,
    required this.isbn,
    required super.titulo,
    required super.anoPublicacao,
    required super.quantidadeCopias,
  }) : super(
          precoEmprestimo: 15.0,
          multaPorDia: 2.5,
        );

  Livro.classico({
    required this.autor,
    required this.isbn,
    required super.titulo,
  }) : super(
          anoPublicacao: 1900,
          quantidadeCopias: 1,
          precoEmprestimo: 15.0,
          multaPorDia: 2.5,
        );

  factory Livro.criarPadrao() {
    return Livro(
      titulo: "Livro Padrão",
      autor: "Desconhecido",
      isbn: 0,
      anoPublicacao: 2025,
      quantidadeCopias: 1,
    );
  }

  @override
  void exibirDetalhes() {
    print("""
 LIVRO
Título: $titulo
Autor: $autor
ISBN: $isbn
Ano: $anoPublicacao
Estoque: $quantidadeCopias
Empréstimos: $totalEmprestimos
""");
  }
}
