import 'emprestimo.dart';

abstract class ItemBiblioteca {
  String titulo;
  int anoPublicacao;
  int quantidadeCopias;

  final double precoEmprestimo;
  final double multaPorDia;

  int totalEmprestimos = 0;

  final List<Emprestimo> historico = [];

  ItemBiblioteca({
    required this.titulo,
    required this.anoPublicacao,
    required this.quantidadeCopias,
    required this.precoEmprestimo,
    required this.multaPorDia,
  });

  bool emprestar() {
    if (quantidadeCopias <= 0) {
      print(" $titulo indisponível.");
      return false;
    }

    quantidadeCopias--;
    totalEmprestimos++;

    historico.add(Emprestimo());

    print(" $titulo emprestado.");

    return true;
  }

  double devolver(int diasUtilizados) {
    quantidadeCopias++;

    double valor = precoEmprestimo;

    if (diasUtilizados > 7) {
      int atraso = diasUtilizados - 7;
      valor += atraso * multaPorDia;
    }

    return valor;
  }

  void exibirDetalhes();
}
