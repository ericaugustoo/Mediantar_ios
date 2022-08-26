import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'global.dart';
// ignore: must_be_immutable
class ImagemInfo extends StatelessWidget {
  String endereco;
  ImagemInfo(this.endereco);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 1,
        height: size.height * 0.4,
        decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0)),
            image: new DecorationImage(
                fit: BoxFit.fill, image: AssetImage(endereco))));
  }
}

// ignore: must_be_immutable
class TituloForm extends StatelessWidget {
  String titulo = '';
  TituloForm(this.titulo);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.1,
      child: AutoSizeText(
        titulo,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25 + fonte, color: Colors.black),
        maxLines: 2,
        minFontSize: 12,
      ),
    );
  }
}

// ignore: must_be_immutable
class InfoForm extends StatelessWidget {
  String info = '';
  InfoForm(this.info);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.25,
      child: AutoSizeText(
        info,
        style: TextStyle(
            fontWeight: FontWeight.normal, fontSize: 18 + fonte, color: Colors.black),
        maxLines: 7,
        minFontSize: 12,
      ),
    );
  }
}

// ignore: must_be_immutable
class BotaoInfo extends StatelessWidget {
  Color cor;
  // Function onclick4;
  String texto = "";
  Function onclick;
  BotaoInfo(this.texto, this.cor , this.onclick);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.060,
          child: RaisedButton(
              color: cor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
              ),
              onPressed:onclick,
              child: Text(texto, style: TextStyle(color: Colors.white, fontSize: 11 + fonte),))),
    );
  }
}