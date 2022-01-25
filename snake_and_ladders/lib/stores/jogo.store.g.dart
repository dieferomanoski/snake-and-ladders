// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jogo.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CobrasEscadasStore on _CobrasEscadasStoreBase, Store {
  final _$jogador1Atom = Atom(name: '_CobrasEscadasStoreBase.jogador1');

  @override
  JogadorStore get jogador1 {
    _$jogador1Atom.reportRead();
    return super.jogador1;
  }

  @override
  set jogador1(JogadorStore value) {
    _$jogador1Atom.reportWrite(value, super.jogador1, () {
      super.jogador1 = value;
    });
  }

  final _$jogador2Atom = Atom(name: '_CobrasEscadasStoreBase.jogador2');

  @override
  JogadorStore get jogador2 {
    _$jogador2Atom.reportRead();
    return super.jogador2;
  }

  @override
  set jogador2(JogadorStore value) {
    _$jogador2Atom.reportWrite(value, super.jogador2, () {
      super.jogador2 = value;
    });
  }

  final _$randomIntForDiceOneAtom =
      Atom(name: '_CobrasEscadasStoreBase.randomIntForDiceOne');

  @override
  int get randomIntForDiceOne {
    _$randomIntForDiceOneAtom.reportRead();
    return super.randomIntForDiceOne;
  }

  @override
  set randomIntForDiceOne(int value) {
    _$randomIntForDiceOneAtom.reportWrite(value, super.randomIntForDiceOne, () {
      super.randomIntForDiceOne = value;
    });
  }

  final _$randomIntForDiceTwoAtom =
      Atom(name: '_CobrasEscadasStoreBase.randomIntForDiceTwo');

  @override
  int get randomIntForDiceTwo {
    _$randomIntForDiceTwoAtom.reportRead();
    return super.randomIntForDiceTwo;
  }

  @override
  set randomIntForDiceTwo(int value) {
    _$randomIntForDiceTwoAtom.reportWrite(value, super.randomIntForDiceTwo, () {
      super.randomIntForDiceTwo = value;
    });
  }

  final _$isPlayerOneTurnAtom =
      Atom(name: '_CobrasEscadasStoreBase.isPlayerOneTurn');

  @override
  bool get isPlayerOneTurn {
    _$isPlayerOneTurnAtom.reportRead();
    return super.isPlayerOneTurn;
  }

  @override
  set isPlayerOneTurn(bool value) {
    _$isPlayerOneTurnAtom.reportWrite(value, super.isPlayerOneTurn, () {
      super.isPlayerOneTurn = value;
    });
  }

  final _$roundMessageAtom = Atom(name: '_CobrasEscadasStoreBase.roundMessage');

  @override
  String get roundMessage {
    _$roundMessageAtom.reportRead();
    return super.roundMessage;
  }

  @override
  set roundMessage(String value) {
    _$roundMessageAtom.reportWrite(value, super.roundMessage, () {
      super.roundMessage = value;
    });
  }

  final _$_CobrasEscadasStoreBaseActionController =
      ActionController(name: '_CobrasEscadasStoreBase');

  @override
  dynamic rollDice() {
    final _$actionInfo = _$_CobrasEscadasStoreBaseActionController.startAction(
        name: '_CobrasEscadasStoreBase.rollDice');
    try {
      return super.rollDice();
    } finally {
      _$_CobrasEscadasStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic jogar(int dado1, int dado2) {
    final _$actionInfo = _$_CobrasEscadasStoreBaseActionController.startAction(
        name: '_CobrasEscadasStoreBase.jogar');
    try {
      return super.jogar(dado1, dado2);
    } finally {
      _$_CobrasEscadasStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
jogador1: ${jogador1},
jogador2: ${jogador2},
randomIntForDiceOne: ${randomIntForDiceOne},
randomIntForDiceTwo: ${randomIntForDiceTwo},
isPlayerOneTurn: ${isPlayerOneTurn},
roundMessage: ${roundMessage}
    ''';
  }
}
