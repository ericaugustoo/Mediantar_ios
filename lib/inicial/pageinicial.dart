
import 'package:flutter/material.dart';
import 'package:mediantar2/inicial/widgetinicial.dart';
import 'package:mediantar2/utils/global.dart';


class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // Estrutura de repetição utilizada para popular o vetor
    //coresbotao e assim criar as cores iniciais de cada botao 
    //de resposta. Note que são 30 posições, pois foram
    //feitas apenas 3 páginas no modelo(Cada página contém 10
    //respostas)
    //print('Tamanho do vetor coresbotao = ${coresbotao.length}');
    //print('Tamanho do vetor respostas = ${respostas.length}');
     for (int i = 0; i < 130; i++) {
          if (coresbotao.length<130){
            coresbotao.add(corbotao);
            }
          else{
            coresbotao[i]=corbotao;
          }
      }    
     for (int i = 0; i < 24; i++) {
      if (respostas.length< 24){
        respostas.add('Não preenchida');
      }
      else{
        respostas[i]='Não preenchida';
      }
      
    }

    for (int i = 0; i < 6; i++) {
      if (soma.length< 6){
        soma.add(0);
      }
      else{
      soma[i] = 0;
      }
      
    }
    
    for (int i = 0; i < 24; i++) {
      if (cont.length< 24){
        cont.add(0);
      }
      else{
      cont[i] = 0;
      }
      
    }

    for (int i = 0; i < 7; i++) {
      if (coresbotaodiario.length < 7) {
        coresbotaodiario.add(corbotaodiario);
      } else {
        coresbotaodiario[i] = corbotaodiario;
      }
    }

    for (int i = 0; i < 3; i++) {
      if (ddsresposta.length < 3) {
        ddsresposta.add("Não");
      } else {
        ddsresposta[i] = "Não";
      }
    }
    
    for (int i = 0; i < 33; i++) {
      if (coresbotaoep.length < 33) {
        coresbotaoep.add(corbotaoep);
      } else {
        coresbotaoep[i] = corbotaoep;
      }
    }

    for (int i = 0; i < 9; i++) {
      if (confereep.length < 9) {
        confereep.add("Não preenchido");
      } else {
        confereep[i] = "Não preenchido";
      }
    }
    
    for (int i = 0; i <  20; i++) {
      if (respostaBox.length < 20) {
        respostaBox.add(null);
      } else {
        respostaBox[i] = null;
      }
    }

    for (int i = 0; i < 4; i++) {
      if (resposta9.length < 4) {
        resposta9.add(corbotaopit);
      } else {
        resposta9[i] = corbotaopit;
      }
    }

   // print('Tamanho do vetor coresbotao = ${coresbotao.length}');
    //print('Tamanho do vetor respostas = ${respostas.length}');
    return Scaffold(
      body: SingleChildScrollView(
            child: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  
                  Stack(
                  children: <Widget> [
                    DecoracaoTelaInicial(),
                    Positioned(
                      top: 1,
                      right: 1,
                     child: Container(
                        width: size.width * 0.3,
                        height: size.height * 0.1,
                        child: SizedBox(
                            width: size.width * 0.3,
                            height: size.height * 0.1,
                            child: RaisedButton(
                                elevation: 0,
                                color: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  )),
                              onPressed: () {
                                print(fonte);
                                showAlertDialog();
                              },
                              
                              child: Align(
                                alignment: Alignment(1,0.7),
                                child: Text('FONTE',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15 + fonte))))))),

                  ]
                  ),
                  Divider(
                      height: size.height * 0.040,
                      thickness: 0.0,
                      color: Colors.transparent),
                  Text('FORMULÁRIOS',
                      style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 20 + fonte,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left),
                  Divider(
                      height: size.height * 0.040,
                      thickness: 0.0,
                      color: Colors.transparent),
                  BotaoTelaInicial("FORMULÁRIO BRAMS", Colors.lightBlue[300], onclick1),
                  Divider(
                      height: size.height * 0.040,
                      thickness: 0.0,
                      color: Colors.transparent),
                  BotaoTelaInicial(
                      "FORMULÁRIO DIARIO DO SONO", Colors.lightBlue[500], onclick2),
                  Divider(
                      height: size.height * 0.040,
                      thickness: 0.0,
                      color: Colors.transparent),
                  BotaoTelaInicial(
                      "FORMULÁRIO EPWORTH", Colors.lightBlue[700], onclick3),
                  Divider(
                      height: size.height * 0.040,
                      thickness: 0.0,
                      color: Colors.transparent),
                  BotaoTelaInicial("FORMULARIO PITTSBURGH", Colors.lightBlue[900], onclick4),
                  // BotaoFonte()
                ]))));
                }

        onclick1() {
                setState(() {
                  Navigator.pushNamed(context,"/pageinfobrams");
                  int i = 0;
                  while (i < 130) {
                      coresbotao[i] = corbotao;
                    i++;
                  }

                });
        } 
        onclick2() {
                setState(() {
                  Navigator.pushNamed(context, "/pageinfodds");


                  for (int i = 0; i < 7; i++) {
                    horaresposta[i] = null;
                    coresbotaodiario[i] = corbotaodiario;

                    while(i < 2) {
                      tamanhoreta[i] = 0;
                      valor[i] = 1;
                      i++;
                 }
                    while(i <3) {
                      ddsresposta[i] = '';
                    i++;
                    }

                  }

                });
              } 

        onclick3() {
                setState(() {
                  Navigator.pushNamed(context, "/pageinfoep");
                  int i = 0;
                  while (i < 32) {
                    coresbotaoep[i] = corbotaoep;
                    i++;
                  }
                  /*while (i < 130) {
                    coresbotao[i] = corbotao;
                    i++;
                  }*/
                });
              }      

          onclick4() {
    Widget semanaButton = FlatButton(
      child: Text("Semanal"),
      onPressed: () {
        per = "semana";
        per1 = "semanais";
        art = "a";
        art1 = "a";
        setState(() {
          Navigator.pushNamed(context, "/pageinfoaqs");
          //int i = 0;
        });
        ;
      },
    );
    Widget mesButton = FlatButton(
      child: Text("Mensal"),
      onPressed: () {
        per = "mês";
        per1 = "mensais";
        art = "o";
        art1 = "e";
        setState(() {
          Navigator.pushNamed(context, "/pageinfoaqs");
          //int i = 0;
        });
        ;
      },
    );
    //configura o AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Atenção!!"),
      content: Text(
          "Você preencherá esse formulário em relação a qual período de tempo??"),
      actions: [
        semanaButton,
        mesButton,
      ],
    );
    //exibe o diálogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

        showAlertDialog() {
  // configura os botões
  Widget pequenoButton = FlatButton(
    child: Text("Pequeno"),
    onPressed: () {
        setState(() {
                fonte = 0;
                Navigator.of(context).pop();
       });
    },
  );
  Widget medioButton = FlatButton(
    child: Text("Medio"),
    onPressed: () {
     setState(() {
                fonte = 3;
                Navigator.of(context).pop();
       });
    },
  );
  Widget grandeButton = FlatButton(
    child: Text("Grande"),
    onPressed: () {
      setState(() {
                fonte = 6;
                Navigator.of(context).pop();
       });
    },
  );
  // configura o  AlertDialog
  AlertDialog alert = AlertDialog(
    //title: Text("Aviso"),
    content: Text(
      "Escolha o tamanho da fonte.",
      style: TextStyle(fontSize: 18 + fonte, fontWeight: FontWeight.bold),
    ),
    actions: [
      pequenoButton,
      medioButton,
      grandeButton,
    ],
  );
  // exibe o dialogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
    
}
}