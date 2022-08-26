import 'package:flutter/material.dart';
import 'package:mediantar2/utils/global.dart';


// ignore: must_be_immutable
class BotaoTelaInicial extends StatefulWidget {
  BotaoTelaInicial(this.texto, this.cor, this.onclick);
  Color cor;
  String texto;
  Function onclick;

  @override
  _BotaoTelaInicialState createState() => _BotaoTelaInicialState();
}

class _BotaoTelaInicialState extends State<BotaoTelaInicial> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.9,
        height: size.height * 0.11,
        child: SizedBox(
            width: size.width * 0.9,
            height: size.height * 0.11,
            child: RaisedButton(
                color: widget.cor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(
                      color: widget.cor,
                      width: 1.0,
                    )),
                onPressed: widget.onclick,
                child: Text(widget.texto,
                    
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15 + fonte, )))));
  }
}

class DecoracaoTelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(children: <Widget>[
      Container(
        width: size.width * 1,
        height: size.height * 0.3,
        decoration: BoxDecoration(
          color: Colors.lightBlue[700],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)),
        ),
        child: Container(
          alignment: Alignment(-0.7, 0),
          child: Text(
            "Seja Bem Vindo ",
            style: TextStyle(
                color: Colors.white, fontSize: 25 + fonte, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Container(
          width: size.width * 0.9,
          height: size.height * 0.29,
          alignment: Alignment(1, 1),
          child: Image(
            image: AssetImage('assets/images/telainicial.png'),
            width: size.width * 0.25,
            height: size.height * 0.25,
          )),
      // Container(alignment: Alignment(1, 0), child: BotaoFonte()),
    ]);
  }
}

