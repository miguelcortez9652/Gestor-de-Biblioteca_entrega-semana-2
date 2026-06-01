class Emprestimo {
  final DateTime dataEmprestimo;
  DateTime? dataDevolucao;

  Emprestimo() : dataEmprestimo = DateTime.now();

  void registrarDevolucao() {
    dataDevolucao = DateTime.now();
  }

  int get diasUtilizados {
    if (dataDevolucao == null) return 0;

    return dataDevolucao!
        .difference(dataEmprestimo)
        .inDays;
  }
}
