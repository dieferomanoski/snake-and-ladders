import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:snake_and_ladders/controllers/cobraEscadas.dart';
import 'package:snake_and_ladders/models/cobras_escadas.model.dart';
import 'package:snake_and_ladders/shared/utils/colors/colors.dart';
import 'package:snake_and_ladders/shared/utils/textstyles.model.dart';
// import 'package:snake_and_ladders/stores/jogo.store.dart';
import 'package:snake_and_ladders/ui/home/components/board_grid.widget.dart';
import 'package:snake_and_ladders/ui/home/components/bottom_players.widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final store = CobrasEscadasStore();
  final controller = CobrasEscadas();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Container(
        color: ColorsModel.backgroundColor,
        padding: EdgeInsets.only(
          top: 8,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                "Cobras e Escadas",
                style: TextStylesModel.press2p,
              ),
            ),
            Expanded(
              flex: 10,
              child: BoardGrid(
                jogador1: controller.jogador1,
                jogador2: controller.jogador2,
                cobrasEscadas: CobrasEscadasModel(),
              ),
            ),
            Expanded(
              flex: 1,
              // child: Container(color: Colors.amber, child: Text("INFORMAÇOES")),
              child: Container(),
            ),
            Expanded(
                flex: 2,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.asset(
                        controller.imageArray[controller.randomIntForDiceOne],
                        height: 150,
                        width: 150,
                      ),
                      Image.asset(
                        controller.imageArray[controller.randomIntForDiceTwo],
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  // child: Text(
                  //   "Jogador 1 está na casa 32",
                  //   textAlign: TextAlign.center,
                  //   style: TextStylesModel.press2p,
                  // ),
                )),
            Expanded(
              flex: 1,
              // child: Container(color: Colors.amber, child: Text("INFORMAÇOES")),
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: BottomPlayers(
                callback: () {
                  setState(() {
                    controller.rollDice(context);
                    // MotionToast(
                    //   icon: Icons.person,
                    //   dismissable: true,
                    //   enableAnimation: true,
                    //   primaryColor: !controller.isPlayerOneTurn
                    //       ? Colors.blue
                    //       : Colors.red,
                    //   height: 150,
                    //   description: Text(controller.roundMessage),
                    //   toastDuration: Duration(milliseconds: 1500),
                    //   position: MOTION_TOAST_POSITION.center,
                    // ).show(context);
                  });
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
