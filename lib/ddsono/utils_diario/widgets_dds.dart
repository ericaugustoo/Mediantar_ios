import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mediantar2/utils/global.dart';
import 'package:auto_size_text/auto_size_text.dart';
//perguntas
// ignore: must_be_immutable
class Pergunta extends StatelessWidget {
  String texto = '';
  Pergunta(this.texto);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.92,
        height: size.height * (0.05 + ((fonte/3)*0.01)),
        child: Scaffold(
            body: AutoSizeText(
          texto,
          style: TextStyle( 
              fontWeight: FontWeight.bold, fontSize: 12 + fonte, color: Colors.black),
              maxLines: 2,),
        ));
  }
}

//Selecao de hora
// ignore: must_be_immutable
class Hora extends StatefulWidget {
  int i;
  Hora(this.i);
  @override
  _HoraState createState() => _HoraState(this.i);
}

class _HoraState extends State<Hora> {
  // TimeOfDay time = TimeOfDay.now();
  // TimeOfDay horabotao = TimeOfDay.now();

  _HoraState(this.i);
  int i;
  TimeOfDay time = TimeOfDay.now();
  TimeOfDay horabotao = TimeOfDay.now();
  
  Future<Null> selectTime24Hour(BuildContext context) async {
    horabotao = await showTimePicker(
        context: context,
        initialTime: horabotao,
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            //ThemeData(
            //primaryColor: Colors.lightBlue[500], accentColor: Colors.lightBlue[500][500]),
            child: child,
          );
        });
    if (horabotao != null)
      setState(() {
        horaresposta[i] = horabotao;
        horabotao = horabotao;
        //print(horabotao);
        print(horaresposta[i]);
      });
    else
      setState(() {
        horabotao = time;
        horaresposta[i] = null;
      });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.2,
        height: size.height * 0.06,
        child: RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
              color: Colors.white, width: 1.0, style: BorderStyle.solid)),
      color: Colors.white,
      onPressed: () {
        selectTime24Hour(context);
      },
      child: AutoSizeText( 
        '${horabotao.hour}:${horabotao.minute}',  style: TextStyle( 
              fontSize: 20 + fonte, color: Colors.black),
              maxLines: 1,)
                  ));
  }
}



//usado no sim ou nao
// ignore: must_be_immutable
class BotaoRespostadds extends StatelessWidget {
  Color cor;
  Function onclick;
  String texto = '';
  BotaoRespostadds(this.texto, this.cor, this.onclick);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.2,
        height: size.height * 0.05,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                  color: Colors.lightBlue[500], width: 1.0, style: BorderStyle.solid)),
          color: cor,
          onPressed: onclick,
          child: AutoSizeText(texto, style: TextStyle( 
              fontSize: 15 + fonte, color: Colors.black), 
              maxLines: 1,)
        )); 
  }
}



//usado na outras opcoes
// ignore: must_be_immutable
class OutroBotaoResposta extends StatelessWidget {
  OutroBotaoResposta(this.texto, this.cor, this.onclick);
  Function onclick;
  String texto = '';
  Color cor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.5,
        height: size.height * 0.06,
        child: RaisedButton(
            color: cor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                    color: Colors.lightBlue[500], width: 1.0, style: BorderStyle.solid)),
            onPressed: onclick,
            child: AutoSizeText(texto, style: TextStyle( 
              fontSize: 13 + fonte, color: Colors.black), 
              maxLines: 2),
              ));
  }
}


// ignore: must_be_immutable
/*class CaixadeTexto extends StatelessWidget {
  int i;
  CaixadeTexto(this.i);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.1,
        height: size.height * 0.04,
        child: valorcaixadetexto[i] = TextField(
          decoration: new InputDecoration(labelText: "0"),
          keyboardType: TextInputType.number,
        ));
  }
}*/

/*class CaixadeTexto extends StatefulWidget {
  @override
  _CaixadeTextoState createState() => _CaixadeTextoState();
}

class _CaixadeTextoState extends State<CaixadeTexto> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.11,
        height: size.height * 0.05,
        child: TextField(
          controller: myController,
          autofocus: true,
          decoration: InputDecoration(border: InputBorder.none, hintText: '0'),
          keyboardType: TextInputType.number,
        ));
  }
}*/

// ignore: must_be_immutable
class Valor extends StatefulWidget {
  Valor(this.i, this.j);
  int i;
  int j; //para logica do sim ou não
  @override
  _ValorState createState() => _ValorState(this.i, this.j);
}

class _ValorState extends State<Valor> {
  _ValorState(this.i, this.j);
  int i;
  int j;

  void incrementCounter() {
    setState(() {
      valor[j] = valor[j] + 1;
    });
  }

  void decrementCounter() {
    setState(() {
      if (valor[j] <= 1) {
        valor[j] = 1;
      } else {
        valor[j] = valor[j] - 1;
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (coresbotaodiario[i] == Colors.lightBlue[500]) {
      return Container(
          width: size.width * 0.65,
          height: size.height * 0.3,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
               SizedBox(
                      width: size.width * 0.25,
                      height: size.height * (0.02 + ((fonte/3) * 0.1)),
                      
                       child:  AutoSizeText('Nº de vezes', style: 
                            TextStyle( 
                              fontSize: 15 + fonte, color: Colors.black), 
                              maxLines: 2,)),
                ClipOval(
                  child: Material(
                    color: Colors.lightBlue[500], // button color
                    child: InkWell(
                      splashColor: Colors.green, // inkwell color
                      child: SizedBox(
                          width: MediaQuery.of(context).size.height * 0.05,
                          height: MediaQuery.of(context).size.width * 0.1,
                          child: Icon(Icons.arrow_drop_down)),
                      onTap: () {
                        decrementCounter();

                        //print(valor);
                      },
                    ),
                  ),
                ),
                ButtonTheme(
                    height: size.height * 0.05,
                    minWidth: size.width * 0.05,
                    child: RaisedButton(
                      child: Text('${valor[j]}'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color: Colors.lightBlue[500],
                              width: MediaQuery.of(context).size.width * 0.003,
                              style: BorderStyle.solid)),
                      color: Colors.white,
                      onPressed: () {},
                    )),
                ClipOval(
                  child: Material(
                    color: Colors.lightBlue[500], // button color
                    child: InkWell(
                      splashColor: Colors.green, // inkwell color
                      child: SizedBox(
                          width: MediaQuery.of(context).size.height * 0.05,
                          height: MediaQuery.of(context).size.width * 0.1,
                          child: Icon(Icons.arrow_drop_up)),
                      onTap: () {
                        incrementCounter();
                        //print(valor);
                      },
                    ),
                  ),
                ),
              ]));
    } else
      return Container(
        child: SizedBox(
          child: Text(''),
        ),
      );
  }
}
// ignore: must_be_immutable
class Sedormiu extends StatefulWidget {
  int i;
  Sedormiu(this.i);

  @override
  _SedormiuState createState() => _SedormiuState();
}

class _SedormiuState extends State<Sedormiu> {
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if(coresbotaodiario[widget.i] == Colors.lightBlue[500]) {
    return Container(
            width: size.width * 0.9,
 //           height: size.height * 0.2,
            child: Column(
              children: <Widget> [
            Pergunta('De que horas até que horas?'),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            Container(
              height: size.height * 0.06,
              width: size.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[Text('De', style: TextStyle(fontSize: 15 + fonte)), Hora(3), Text('às', style: TextStyle(fontSize: 15 + fonte)), Hora(4)],
              ),
            ),
            Divider(
                height: size.height * 0.015,
                thickness: 0.0,
                color: Colors.transparent),
            Container(
              height: size.height * 0.06,
              width: size.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[Text('De', style: TextStyle(fontSize: 15 + fonte)), Hora(5), Text('às', style: TextStyle(fontSize: 15 + fonte)), Hora(6)],
              ),
            
            ),
            ], ),
    );
  }
     else
      return Container(
        child: SizedBox(
          child: Text(''),
        ),
      );
  }
}
// ignore: must_be_immutable
class Retaarrastar extends StatefulWidget {
  int i;
  Retaarrastar(this.i);
  @override
  _RetaarrastarState createState() => _RetaarrastarState(this.i);
}

class _RetaarrastarState extends State<Retaarrastar> {
  _RetaarrastarState(this.i);
  int i;
  double _currentSliderValue = 0;
   //       String oi = '';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.9,
        height: size.height * 0.01,
        child: Slider(
          activeColor: Colors.lightBlue[500],
          value: _currentSliderValue,
          min: 0,
          max: 100,
          divisions: 10,
           
          // label: oi,
          //label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            
            setState(() {
              _currentSliderValue = value;
              tamanhoreta[i] = value;
              print(tamanhoreta[i]);
             
             /* if (tamanhoreta[i] < 50) {oi = "Muito Mal"; } else { oi = "Muito Bem"; }*/
             
              });   },
        ));
  }
}

/*class Menudiario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.lightBlue[500][300],
                height: size.height * 0.0405,
                width: double.infinity,
              ),
              Stack(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[500][300],
                    shape: BoxShape.rectangle,
                  ),
                  height: size.height * 0.07,
                  width: double.infinity,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Diário do sono',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[500][300],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(55.0),
                  ),
                  height: size.height * 0.118,
                  width: double.infinity,
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(22.0),
                ),
                Container(
                    height: size.height * 0.118,
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 40,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )),
              ]),
            ]));
  }
}*/