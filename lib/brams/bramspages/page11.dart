
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediantar2/brams/utils_brams/widgets_brams.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:mediantar2/utils/widgets_global.dart';
class Paginabrams11 extends StatefulWidget {
  @override
  _Paginabrams11State createState() => _Paginabrams11State();
}

class _Paginabrams11State extends State<Paginabrams11> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
      return Scaffold(
      
      floatingActionButton: BotaoNavegar( Colors.lightBlue[300],()=> nextpage()),

      body: SingleChildScrollView( 
        child:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: <Widget>[
            MenuTodos('Como você se sente agora?', Colors.lightBlue[300]),
           
            Sentimento('CANSADO'),
          
            Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
          BotaoResposta('Nada', coresbotao[100], () => onclick(100, 104, 100)),
              Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
           BotaoResposta('Um pouco', coresbotao[101], () => onclick(100, 104, 101)),
              Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
           BotaoResposta('Moderadamente',coresbotao[102], () => onclick(100, 104, 102)),
              Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
           BotaoResposta('Bastante', coresbotao[103], () => onclick(100, 104, 103)),
              Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
           BotaoResposta('Extremamente', coresbotao[104], () => onclick(100, 104, 104)),
              Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
             
            Sentimento('MAL-HUMORADO'),
          
            Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
           BotaoResposta('Nada', coresbotao[105], () => onclick(105, 109, 105)),
              Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
          BotaoResposta('Um pouco', coresbotao[106], () => onclick(105, 109, 106)),
              Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
          BotaoResposta('Moderadamente',coresbotao[107], () => onclick(105, 109, 107)),
              Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
          BotaoResposta('Bastante', coresbotao[108], () => onclick(105, 109, 108)),
              Divider( height: size.height * 0.015 , thickness: 0.0, color: Colors.transparent ),
          BotaoResposta('Extremamente', coresbotao[109], () => onclick(105, 109, 109)),
              Divider( height: size.height * 0.0997 , thickness: 0.0, color: Colors.transparent ),
          // BotaoNavegacao( Colors.lightBlue[300],()=> nextpage())
                      ],
                    ),
                  ),
      ),
                );
              }
            //O método onclick do botão de resposta
            //faz uma varredura em uma faixa específica do vetor 
            //de cores para atribuir a cor a um específico botão
            //ao clicar.Por exemplo, a posição 0 do vetor, faz 
            //referência a cor do botão 'Nada' do sentimento 
            //'Apavorado', a posição 1 do vetor, faz referência 
            //a cor do botão 'Um pouco' do snetimento 'Apavorado',
            //e assim por diante.
            //A posição 5 do vetor faz referência a cor do botão 
            //'Nada' do sentimento 'Animado', a posição 6 do 
            //vetor, faz referência a cor do botão 'Um pouco' do 
            //sentimento 'Apavorado', e assim por diante.
            //Note que ao saber quais posições tem a cor verde, 
            //é possível saber qual a resposta assinalada
              onclick(int inicio, int fim, int pos) {
                setState(() {
                  for (int i = inicio; i <= fim; i++) {
                    if (i == pos) {
                      coresbotao[i] =  Colors.lightBlue[300];
                    } else {
                      coresbotao[i] = corbotao;
                    }
                  }
                });
               // print('ok');
              }
              nextpage() {
                // Apenas para testar o vetor
                //for(int i=0;i<10;i++){
                 // if (coresbotao[i]==Colors.green){
                   // print('Opção escolhida $i');
                  //}
                //}
                bool v1 = false;
                bool v2 = false;
                for(int i = 100; i < 105; i++) {
                  if (coresbotao[i] ==  Colors.lightBlue[300]) {
                   v1 = true;
                  }
                }
                for (int i = 105; i < 110; i++) {
                  if (coresbotao[i] ==  Colors.lightBlue[300]) {
                   v2 = true;
                  }
                }
                  if ((v1 && v2) == true ) {
                   Navigator.pushNamed(context, "/pagebrams12");
                  }
                  else {
                    showCupertinoDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (_) => CupertinoAlertDialog(
                      
                      title: Row( children: [
                        Icon(Icons.error_outline, color: Colors.red,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Text("AVISO"),
                      ]
                      ),
                      content: Text("\nSelecione uma opção \npara cada sentimento!", 
                      textAlign: TextAlign.center, 
                      style: TextStyle(color: Colors.blueAccent),
                      ),
                      
                      actions: [
                        FlatButton(onPressed: () { Navigator.pop(context); }, child: Text("Ok"),),
                      
                      ]),
                    
                    );
                  }
                }
}