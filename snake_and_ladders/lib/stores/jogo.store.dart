import 'dart:math';

import 'package:mobx/mobx.dart';
import 'package:snake_and_ladders/shared/utils/assets.model.dart';
import 'package:snake_and_ladders/stores/jogador.store.dart';
part 'jogo.store.g.dart';

class CobrasEscadasStore = _CobrasEscadasStoreBase with _$CobrasEscadasStore;

abstract class _CobrasEscadasStoreBase with Store {
  List<String> imageArray = [
    AssetsModel.one,
    AssetsModel.one,
    AssetsModel.two,
    AssetsModel.three,
    AssetsModel.four,
    AssetsModel.five,
    AssetsModel.six
  ];

  @observable
  JogadorStore jogador1 = JogadorStore(
      nome: 'Jogador 1', casaAtual: 0, casaAnterior: 0, vezDeJogar: true);

  @observable
  JogadorStore jogador2 = JogadorStore(
      nome: 'Jogador 2', casaAtual: 0, casaAnterior: 0, vezDeJogar: false);

  @observable
  int randomIntForDiceOne = Random().nextInt(6);
  @observable
  int randomIntForDiceTwo = Random().nextInt(6);

  @observable
  bool isPlayerOneTurn = true;

  @observable
  String roundMessage = '';

  @action
  rollDice() {
    randomIntForDiceOne = Random().nextInt(6);
    randomIntForDiceTwo = Random().nextInt(6);
    jogar(randomIntForDiceOne, randomIntForDiceTwo);
  }

  @action
  jogar(int dado1, int dado2) {
    if (isPlayerOneTurn) {
      jogador1.setCasaAtual(jogador1.casaAnterior + (dado1 + dado2));
      jogador1.setCasaAnterior(jogador1.casaAtual);
      roundMessage = 'O Jogador 1 está na casa ${jogador1.casaAtual + 1}';
    } else {
      jogador2.setCasaAtual(jogador2.casaAnterior + (dado1 + dado2));
      jogador2.setCasaAnterior(jogador2.casaAtual);
      roundMessage = 'O Jogador 2 está na casa ${jogador2.casaAtual + 1}';
    }
    isPlayerOneTurn = !isPlayerOneTurn;
  }
}
