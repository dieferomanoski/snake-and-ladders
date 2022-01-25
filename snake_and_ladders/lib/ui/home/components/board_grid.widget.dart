import 'package:flutter/material.dart';
import 'package:snake_and_ladders/models/cobras_escadas.model.dart';
import 'package:snake_and_ladders/models/jogador.model.dart';
import 'package:snake_and_ladders/shared/utils/assets.model.dart';
import 'package:snake_and_ladders/shared/utils/colors/colors.dart';
import 'package:snake_and_ladders/stores/jogador.store.dart';

class BoardGrid extends StatelessWidget {
  final JogadorModel jogador1;
  final JogadorModel jogador2;
  final CobrasEscadasModel cobrasEscadas;

  const BoardGrid({
    Key? key,
    required this.jogador1,
    required this.jogador2,
    required this.cobrasEscadas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: ColorsModel.primaryColor.withOpacity(0.3),
      //   ),
      // ),
      child: GridView.builder(
          itemCount: 100,
          reverse: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            int indexAtual = index + 1;
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400]!, offset: Offset(1, 2)),
                  ],
                  color: ColorsModel.secundaryColor,
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Text(
                          "$indexAtual",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        )),
                    Stack(
                      children: cobrasEscadas.escadas.map((e) {
                        if (e.x == indexAtual || e.y == indexAtual) {
                          return Image.asset(
                            AssetsModel.ladder,
                            color: e.color,
                          );
                        }
                        return Container();
                      }).toList(),
                    ),
                    Stack(
                      children: cobrasEscadas.cobras.map((e) {
                        if (e.x == indexAtual || e.y == indexAtual) {
                          return Image.asset(
                            AssetsModel.snake,
                            color: e.color,
                          );
                        }
                        return Container();
                      }).toList(),
                    ),
                    if (jogador1.casaAtual == indexAtual)
                      Center(
                        child: Image.asset(AssetsModel.playerBlue),
                      ),
                    jogador2.casaAtual == indexAtual
                        ? Center(
                            child: Image.asset(AssetsModel.playerRed),
                          )
                        : Container()
                  ],
                ),
              ),
            );
          }),
    );
  }
}
