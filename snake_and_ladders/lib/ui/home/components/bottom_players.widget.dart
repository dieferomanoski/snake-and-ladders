import 'package:flutter/material.dart';
import 'package:snake_and_ladders/shared/utils/assets.model.dart';
import 'package:snake_and_ladders/shared/utils/colors/colors.dart';
import 'package:snake_and_ladders/shared/utils/textstyles.model.dart';
import 'package:snake_and_ladders/stores/jogo.store.dart';

class BottomPlayers extends StatelessWidget {
  final Function callback;
  const BottomPlayers({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Card(
      color: ColorsModel.backgroundColor,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Jogador 1",
                  style: TextStylesModel.press2p.copyWith(fontSize: 10),
                ),
                Image.asset(AssetsModel.playerBlue)
                // Container(
                //   color: Colors.greenAccent,
                //   height: 30,
                //   width: 30,
                // ),
              ],
            ),
            InkWell(
              onTap: () {
                callback();
              },
              child: Container(
                // color: Colors.amberAccent,
                width: 200,
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: Image.asset(
                      AssetsModel.button,
                      fit: BoxFit.cover,
                    )),
                    Center(
                      child: Text(
                        "Rolar Dados",
                        style: TextStylesModel.press2p.copyWith(fontSize: 10),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Jogador 2",
                  style: TextStylesModel.press2p.copyWith(fontSize: 10),
                ),
                Image.asset(AssetsModel.playerRed)
                // Container(
                //   color: Colors.brown,
                //   height: 30,
                //   width: 30,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
