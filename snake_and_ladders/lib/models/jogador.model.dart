class JogadorModel {
  String nome = '';

  bool vezDeJogar = false;

  int casaAtual = 1;

  int casaAnterior = 1;

  JogadorModel({
    required this.nome,
    required this.vezDeJogar,
    required this.casaAnterior,
    required this.casaAtual,
  });

  String getNome() => nome;
  bool getVezDeJogar() => vezDeJogar;
  int getCasaAtual() => casaAtual;
  int getCasaAnterior() => casaAnterior;

  setNome(String name) => nome = name;

  setVezDeJogar(bool vez) => vezDeJogar = vez;

  setCasaAtual(int atual) => casaAtual = atual;

  setCasaAnterior(int anterior) => casaAnterior = anterior;
}
