import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mediantar2/utils/global.dart';

// ignore: must_be_immutable
class BotaoInicio extends StatelessWidget {
  Color cor;
  Function onclick;
  String texto = "";
  BotaoInicio(this.texto,this.cor,this.onclick);
  @override
   Widget build(BuildContext context) {
          return Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.08,
              child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * (0.060 + ((fonte/3) * 0.01)),
                      child: RaisedButton(
                              color: cor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0), side: BorderSide(color: Colors.black, width: 1.0, style: BorderStyle.solid)),
                    
                              onPressed:onclick,
                              child: Text(texto, style: TextStyle(color: Colors.white, fontSize: 14 + fonte))                       
                    )),
          );   
  }
}

// ignore: must_be_immutable



// ignore: must_be_immutable
/*class BotaoNavegacao extends StatelessWidget {
  Color cor;
  Function onclick;
  BotaoNavegacao(this.cor,this.onclick);
  @override
   Widget build(BuildContext context) {
          return Container(
            
            width: MediaQuery.of(context).size.width * 0.98,
            height: MediaQuery.of(context).size.height * 0.09,
                        child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [
                          
                          ClipOval(
                            
                            child: MaterialButton(
                             
                              color: Colors.cyan[900], // button color
                              onPressed: () { 
                                 Navigator.pop(context);
                               },

                                splashColor: Colors.cyan[900], // inkwell color
                                child: SizedBox(width: MediaQuery.of(context).size.width * 0.06, height: MediaQuery.of(context).size.height * 0.08, child: Icon(Icons.arrow_back_ios, size: 10, color: Colors.white)),
                                
                              ),
                            ),

                            ClipOval(

                            child: MaterialButton(
                              onPressed:onclick,
                              color: Colors.cyan[900], // button color
                                child: SizedBox(width: MediaQuery.of(context).size.width * 0.08, height: MediaQuery.of(context).size.height * 0.08, child: Icon(Icons.arrow_forward_ios, size: 10, color: Colors.white),
                              ),

                               ),
                            ),
                                                        
                              ],                     ),
                               
          );   
  }
}*/



// ignore: must_be_immutable
class MenuTodos extends StatelessWidget {
  String texto = "";
  Color cor;
  MenuTodos(this.texto, this.cor);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
                
             
                Stack(
                  children: <Widget> [
                    
              Container(
                decoration: BoxDecoration(
                  color: cor,
                  shape: BoxShape.rectangle,
                ),
                    height: size.height * 0.070,
                    width: double.infinity,
                    
              ),
 
              Container(
                alignment: Alignment.bottomCenter,
                child: AutoSizeText(texto,
                style: TextStyle(color: Colors.white, fontSize: 20 + fonte), maxLines: 2,
                textAlign: TextAlign.center,
                
                ),
                
                decoration: BoxDecoration(
                  color: cor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(55.0),
                ),
                    height: size.height * 0.15,
                    width: double.infinity,
                margin: EdgeInsets.all(0.0),                
                padding: EdgeInsets.all(22.0),
              ),
              
                /* Container(
                height: size.height * 0.118,
                alignment: Alignment.centerLeft,
                color: Colors.transparent,
                child: IconButton (
                        icon:  Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.white,
                        
                          onPressed: () {
                            Navigator.pop(context);
                          } ,
                )),*/
                     
                   ] ),
        ]
      ));
  }
}

  // ignore: must_be_immutable
  class MenuVoltar extends StatelessWidget {
  String texto = "";
  Color cor;
  MenuVoltar(this.texto, this.cor);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
                
             
                Stack(
                  children: <Widget> [
                    
              Container(
                decoration: BoxDecoration(
                  color: cor,
                  shape: BoxShape.rectangle,
                ),
                    height: size.height * 0.070,
                    width: double.infinity,
                    
              ),
 
              Container(
                
                alignment: Alignment.bottomCenter,
                child: AutoSizeText(texto,
                style: TextStyle(color: Colors.white, fontSize: 20 + fonte), maxLines: 1,
                textAlign: TextAlign.center,
                
                ),
                
                decoration: BoxDecoration(
                  color: cor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(55.0),
                ),
                    height: size.height * 0.15,
                    width: double.infinity,
                margin: EdgeInsets.all(0.0),                
                padding: EdgeInsets.all(22.0),
              ),
              
                Container(
                height: size.height * 0.118,
                alignment: Alignment.bottomLeft,
                color: Colors.transparent,
                child: IconButton (
                        icon:  Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.white,
                        
                          onPressed: () {
                            Navigator.pop(context);
                          } ,
                )),
                     
                   ] ),
        ]
      ));
  }
}


// ignore: must_be_immutable
class DadosForm extends StatefulWidget {
    @override
    _DadosFormState createState() => _DadosFormState();
    
  }
  
  class _DadosFormState extends State<DadosForm> {
    @override
    Widget build(BuildContext context) {
      var size = MediaQuery.of(context).size;
      return Form(
        key: key,
    //          autovalidate: validate,
              child:  Column(
      children: <Widget>[
        TextFormField(
  //              autofocus: true,
                keyboardType: TextInputType.text,
                
                style: new TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                                labelText: "Voluntário",
                                hintText: "Digite seu nome",
                                labelStyle: TextStyle( color: Colors.lightBlue[300]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black),
                    
                              ),
                  prefixIcon: Icon(Icons.person, color: Colors.black),
           
                  ),

                validator: _validarNome,
                 onSaved: (String val) {
                nome1 = val;
             },
              ),
             Divider(height: size.height * 0.05,  color: Colors.transparent),

              TextFormField(
//                autofocus: true,
                keyboardType: TextInputType.text,
                
                style: new TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                                labelText: "Local da coleta (grupo)",
                                hintText: "Digite o local",
                                labelStyle: TextStyle( color: Colors.lightBlue[300]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black),
                    
                              ),
                  prefixIcon: Icon(Icons.place, color: Colors.black),
                
                  ),

                  validator: _validarLocal,
                 onSaved: (String val) {
                local1 = val; 
                }  
              ),   
        
        new SizedBox(height: 15.0),
        
      ]));
    
  }


  String _validarNome(String value) {
    
    if (value.length == 0) {
      return "Informe o nome";
    } else 
    return null;
  }
 
  String _validarLocal(String value) {
    
    if (value.length == 0) {
      return "Informe o local";
    } else 
    return null;
  }
  
  sendForm() {
    if (key.currentState.validate()) {
      // Sem erros na validação
      key.currentState.save();
      print("Nome $nome1");
      print("Ceclular $local1");
   Navigator.pushNamed(context, "/pagedds1");
    } else {
      // erro de validação
 
        validate = true;
    
    }
  }

  }

 