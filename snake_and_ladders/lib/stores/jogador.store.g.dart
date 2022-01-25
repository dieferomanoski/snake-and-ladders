// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jogador.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$JogadorStore on _JogadorStoreBase, Store {
  final _$nomeAtom = Atom(name: '_JogadorStoreBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$vezDeJogarAtom = Atom(name: '_JogadorStoreBase.vezDeJogar');

  @override
  bool get vezDeJogar {
    _$vezDeJogarAtom.reportRead();
    return super.vezDeJogar;
  }

  @override
  set vezDeJogar(bool value) {
    _$vezDeJogarAtom.reportWrite(value, super.vezDeJogar, () {
      super.vezDeJogar = value;
    });
  }

  final _$casaAtualAtom = Atom(name: '_JogadorStoreBase.casaAtual');

  @override
  int get casaAtual {
    _$casaAtualAtom.reportRead();
    return super.casaAtual;
  }

  @override
  set casaAtual(int value) {
    _$casaAtualAtom.reportWrite(value, super.casaAtual, () {
      super.casaAtual = value;
    });
  }

  final _$casaAnteriorAtom = Atom(name: '_JogadorStoreBase.casaAnterior');

  @override
  int get casaAnterior {
    _$casaAnteriorAtom.reportRead();
    return super.casaAnterior;
  }

  @override
  set casaAnterior(int value) {
    _$casaAnteriorAtom.reportWrite(value, super.casaAnterior, () {
      super.casaAnterior = value;
    });
  }

  final _$_JogadorStoreBaseActionController =
      ActionController(name: '_JogadorStoreBase');

  @override
  dynamic setNome(String name) {
    final _$actionInfo = _$_JogadorStoreBaseActionController.startAction(
        name: '_JogadorStoreBase.setNome');
    try {
      return super.setNome(name);
    } finally {
      _$_JogadorStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setVezDeJogar(bool vez) {
    final _$actionInfo = _$_JogadorStoreBaseActionController.startAction(
        name: '_JogadorStoreBase.setVezDeJogar');
    try {
      return super.setVezDeJogar(vez);
    } finally {
      _$_JogadorStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCasaAtual(int atual) {
    final _$actionInfo = _$_JogadorStoreBaseActionController.startAction(
        name: '_JogadorStoreBase.setCasaAtual');
    try {
      return super.setCasaAtual(atual);
    } finally {
      _$_JogadorStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCasaAnterior(int anterior) {
    final _$actionInfo = _$_JogadorStoreBaseActionController.startAction(
        name: '_JogadorStoreBase.setCasaAnterior');
    try {
      return super.setCasaAnterior(anterior);
    } finally {
      _$_JogadorStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
vezDeJogar: ${vezDeJogar},
casaAtual: ${casaAtual},
casaAnterior: ${casaAnterior}
    ''';
  }
}
