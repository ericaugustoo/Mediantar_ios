import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mediantar2/utils/global.dart';

//ignore: must_be_immutable
  class BotaoResposta extends StatelessWidget {
  Color cor;
  Function onclick;
  String texto = "";
  BotaoResposta(this.texto,this.cor,this.onclick);
  @override
   Widget build(BuildContext context) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.60, 
            height: MediaQuery.of(context).size.height * 0.05,
            child: RaisedButton(
                    color:cor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.blue, width: 1.0, style: BorderStyle.solid)),
          
                    onPressed:onclick,
                    child: AutoSizeText(texto, style: 
                            TextStyle( 
                              fontSize: 12 + fonte, color: Colors.black), 
                              maxLines: 1,),
                    )
  );    
  }
}

// ignore: must_be_immutable
class BotaoNavegar extends StatelessWidget {
  Color cor;
  Function onclick;
  BotaoNavegar(this.cor,this.onclick);
  @override
   Widget build(BuildContext context) {
          return Stack(
          children: <Widget>[

            Padding(padding: EdgeInsets.only(left:31),
            child: Align(
              alignment: Alignment.bottomLeft,
             
              child: FloatingActionButton(
                heroTag: null,
                backgroundColor: cor,
                onPressed: () { 
                   Navigator.pop(context);
                 },
                child: Icon(Icons.arrow_back_ios),),
            ),),

            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: cor,
                heroTag: null,
              onPressed:onclick,
              child: Icon(Icons.arrow_forward_ios),),
            ),
          ],
        );
   }
   }


// ignore: must_be_immutable
class Sentimento extends StatelessWidget {
  String texto = "";
  Sentimento(this.texto);
  @override
   Widget build(BuildContext context) {
          return Container(
            child: Column(
            children: <Widget> [
              SizedBox(
              width: MediaQuery.of(context).size.width * 0.001,
              height: MediaQuery.of(context).size.height * 0.05,
              ), 
            
            AutoSizeText(texto, textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20 + fonte, color: Colors.black),
                        maxLines: 1),
            ]));    
  }
}
