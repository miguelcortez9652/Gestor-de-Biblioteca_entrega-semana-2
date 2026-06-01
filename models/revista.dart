import 'item_biblioteca.dart';

class Revista extends ItemBiblioteca {
  int numeroEdicao;
  String mesPublicacao;

  Revista({
    required this.numeroEdicao,
    required this.mesPublicacao,
    required super.titulo,
    required super.anoPublicacao,
    required super.quantidadeCopias,
  }) : super(
          precoEmprestimo: 5.0,
          multaPorDia: 1.0,
        );

  factory Revista.criarPadrao() {
    return Revista(
      titulo: "Revista Padrão",
      numeroEdicao: 1,
      mesPublicacao: "Janeiro",
      anoPublicacao: 2025,
      quantidadeCopias: 1,
    );
  }

  @override
  void exibirDetalhes() {
    print("""
 REVISTA
Título: $titulo
Edição: $numeroEdicao
Mês: $mesPublicacao
Ano: $anoPublicacao
Estoque: $quantidadeCopias
Empréstimos: $totalEmprestimos
""");
  }
}
