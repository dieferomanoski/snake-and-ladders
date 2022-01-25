import 'package:mobx/mobx.dart';
part 'jogador.store.g.dart';

class JogadorStore = _JogadorStoreBase with _$JogadorStore;

abstract class _JogadorStoreBase with Store {
  @observable
  String nome = '';

  @observable
  bool vezDeJogar = false;

  @observable
  int casaAtual = 0;

  @observable
  int casaAnterior = 0;

  _JogadorStoreBase({
    required this.nome,
    required this.vezDeJogar,
    required this.casaAnterior,
    required this.casaAtual,
  });

  String getNome() => nome;
  bool getVezDeJogar() => vezDeJogar;
  int getCasaAtual() => casaAtual;
  int getCasaAnterior() => casaAnterior;

  @action
  setNome(String name) => nome = name;

  @action
  setVezDeJogar(bool vez) => vezDeJogar = vez;

  @action
  setCasaAtual(int atual) => casaAtual = atual;

  @action
  setCasaAnterior(int anterior) => casaAnterior = anterior;
}
