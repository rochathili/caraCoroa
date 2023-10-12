import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Jogar extends StatefulWidget {
  String valor;
  Jogar(this.valor);

  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if (widget.valor == 'cara') {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda-coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff761bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              child: Image.asset("images/botao_voltar.png"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
