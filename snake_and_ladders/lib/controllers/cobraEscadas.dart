import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:snake_and_ladders/models/cobras_escadas.model.dart';
import 'package:snake_and_ladders/models/jogador.model.dart';
import 'package:snake_and_ladders/shared/utils/assets.model.dart';
import 'package:snake_and_ladders/shared/utils/colors/colors.dart';
import 'package:snake_and_ladders/shared/utils/textstyles.model.dart';
import 'dart:ui' as ui;

class CobrasEscadas {
  List<String> imageArray = [
    AssetsModel.one,
    AssetsModel.one,
    AssetsModel.two,
    AssetsModel.three,
    AssetsModel.four,
    AssetsModel.five,
    AssetsModel.six
  ];

  CobrasEscadasModel cobrasEscadasModel = CobrasEscadasModel();

  JogadorModel jogador1 = JogadorModel(
      nome: 'Jogador 1', casaAtual: 1, casaAnterior: 1, vezDeJogar: true);

  JogadorModel jogador2 = JogadorModel(
      nome: 'Jogador 2', casaAtual: 1, casaAnterior: 1, vezDeJogar: false);

  int randomIntForDiceOne = Random().nextInt(6);

  int randomIntForDiceTwo = Random().nextInt(6);

  bool isPlayerOneTurn = true;

  // String roundMessage = '';
  Map<String, dynamic> roundMessage = {
    'title': '',
    'description': '',
    'icon': Icons.person,
    'color': Colors.greenAccent,
    'image': AssetsModel.playerBlue
  };

  bool isEscada = false;
  bool isSnake = false;

  rollDice(BuildContext context) {
    randomIntForDiceOne = Random().nextInt(6);
    randomIntForDiceTwo = Random().nextInt(6);
    jogar(randomIntForDiceOne, randomIntForDiceTwo, context);
  }

  jogar(int dado1, int dado2, BuildContext context) {
    if (isPlayerOneTurn) {
      if (jogador1.casaAtual + (dado1 + dado2) > 100) {
        int newCasa = (jogador1.casaAnterior + (dado1 + dado2)) - 100;
        jogador1.setCasaAtual(100 - newCasa);
        jogador1.setCasaAnterior(jogador1.casaAtual);
      } else if (jogador1.casaAtual + (dado1 + dado2) == 100) {
        //zerar jogo 1 venceu
        resetGame();
        setRoundMessage(
            color: ColorsModel.backgroundColor,
            description: 'JOGADOR 1 VENCEU A PARTIDA',
            icon: Icons.wine_bar,
            title: 'VITÓRIA',
            image: AssetsModel.playerBlue);
        // showMotionToast(context);
        Overlay.of(context)?.insert(getEntry(context));
        return;
      } else {
        jogador1.setCasaAtual(jogador1.casaAnterior + (dado1 + dado2));
        jogador1.setCasaAnterior(jogador1.casaAtual);
      }
      setRoundMessage(
          description: "O Jogador 1 foi para casa ${jogador1.casaAtual}",
          color: Colors.blue[900] ?? Colors.blue,
          image: AssetsModel.playerBlue);
      checkEscadas(jogador1);
      checkCobras(jogador1);
    } else {
      if (jogador2.casaAtual + (dado1 + dado2) > 100) {
        int newCasa = (jogador2.casaAnterior + (dado1 + dado2)) - 100;
        jogador2.setCasaAtual(100 - newCasa);
        jogador2.setCasaAnterior(jogador2.casaAtual);
      } else if (jogador1.casaAtual + (dado1 + dado2) == 100) {
        // todo jg1 venceu
        resetGame();
        setRoundMessage(
            color: ColorsModel.backgroundColor,
            description: 'JOGADOR 1 VENCEU A PARTIDA',
            icon: Icons.wine_bar,
            title: 'VITÓRIA',
            image: AssetsModel.playerRed);
        // showMotionToast(context);
        Overlay.of(context)?.insert(getEntry(context));
        return;
      } else {
        jogador2.setCasaAtual(jogador2.casaAnterior + (dado1 + dado2));
        jogador2.setCasaAnterior(jogador2.casaAtual);
      }

      setRoundMessage(
          description: "O Jogador 2 foi para casa ${jogador2.casaAtual}",
          color: Colors.red[900] ?? Colors.red,
          image: AssetsModel.playerRed);
      checkEscadas(jogador2);
      checkCobras(jogador2);
    }
    // showMotionToast(context);
    Overlay.of(context)?.insert(getEntry(context));

    isPlayerOneTurn = !isPlayerOneTurn;
  }

  checkCobras(JogadorModel jogador) {
    cobrasEscadasModel.cobras.forEach((e) {
      if (e.x == jogador.casaAtual) {
        jogador.setCasaAtual(e.y);
        jogador.setCasaAnterior(jogador.casaAtual);
        setRoundMessage(
            title: 'Cobra',
            description:
                "${jogador.nome} foi mordido pela cobra e voltou até a casa ${jogador.casaAtual}",
            color: Colors.redAccent,
            icon: Icons.close,
            image: AssetsModel.snake);
      }
    });
  }

  checkEscadas(JogadorModel jogador) {
    cobrasEscadasModel.escadas.forEach((e) {
      if (e.x == jogador.casaAtual) {
        jogador.setCasaAtual(e.y);
        jogador.setCasaAnterior(jogador.casaAtual);
        setRoundMessage(
            title: 'Escada',
            description:
                "${jogador.nome} subiu uma escada até a casa ${jogador.casaAtual}",
            color: Colors.green,
            icon: Icons.stairs,
            image: AssetsModel.ladder);
      }
    });
  }

  resetGame() {
    jogador1.casaAnterior = 1;
    jogador1.casaAtual = 1;
    jogador1.vezDeJogar = true;
    jogador2.casaAnterior = 1;
    jogador2.casaAtual = 1;
    jogador2.vezDeJogar = false;
    isPlayerOneTurn = true;
  }

  // showMotionToast(context) {
  //   MotionToast(
  //     title: Text(
  //       roundMessage['title'],
  //       style: TextStylesModel.press2p
  //           .copyWith(fontSize: 14, color: Colors.grey[600]),
  //     ),
  //     description: Text(roundMessage['description'],
  //         style: TextStylesModel.press2p
  //             .copyWith(fontSize: 14, color: Colors.grey[600])),
  //     icon: roundMessage['icon'],
  //     iconSize: 45,
  //     primaryColor: roundMessage['color'],
  //     animationCurve: Curves.ease,
  //     animationDuration: Duration(milliseconds: 3000),
  //     toastDuration: Duration(milliseconds: 3000),
  //     enableAnimation: true,
  //     position: MOTION_TOAST_POSITION.center,
  //   ).show(context);
  // }

  setRoundMessage(
      {String title = '',
      String description = '',
      IconData icon = Icons.person,
      Color color = Colors.grey,
      String image = ''}) {
    roundMessage['title'] = title;
    roundMessage['description'] = description;
    roundMessage['icon'] = icon;
    roundMessage['color'] = color;
    roundMessage['image'] = image;
  }

  OverlayEntry getEntry(context) {
    OverlayEntry? entry;
    var size = MediaQuery.of(context).size;
    Future.delayed(Duration(milliseconds: 3500), () {
      entry?.remove();
    });

    entry = OverlayEntry(
      opaque: false,
      maintainState: true,
      builder: (_) => Container(
        // left: 100,
        // bottom: 100,
        width: size.width,
        height: size.height,
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 2,
          ),
          child: Material(
            type: MaterialType.transparency,
            child: Center(
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.4,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(16),
                        height: 130,
                        width: 130,
                        child: Image.asset(
                          roundMessage['image'],
                          fit: BoxFit.cover,
                        )),
                    Text(
                      roundMessage['description'],
                      style: TextStylesModel.press2p,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
    return entry;
  }
}

  // cobrasEscadasModel.escadas.forEach((e) {
      //   if (e.x == jogador2.casaAtual) {
      //     jogador2.setCasaAtual(e.y);
      //     jogador2.setCasaAnterior(jogador2.casaAtual);
      //     setRoundMessage(
      //         title: 'Escada',
      //         description:
      //             "Jogador 2 subiu uma escada até a casa ${jogador2.casaAtual}",
      //         color: Colors.green,
      //         icon: Icons.stairs);
      //   }
      // });
