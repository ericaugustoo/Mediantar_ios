import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";


class Pagelogin extends StatefulWidget {
  @override
  _PageloginState createState() => _PageloginState();
}

class _PageloginState extends State<Pagelogin> {
  TextEditingController dados = TextEditingController();
  TextEditingController dados1 = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

     var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: SingleChildScrollView( 
        child: Padding(
          padding: EdgeInsets.all(25),
          
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                SizedBox(
                  height: size.height * 0.05,
                ),
        
                AutoSizeText('BEM VINDO(A)!', style: 
                        TextStyle( 
                         // fontFamily: famy,
                          fontSize: 60, color: Colors.white), 
                          maxLines: 1,
                        ),
                Divider(height: size.height * 0.05, color: Colors.transparent),
                Stack(
                  children: [
                Container(
                  //color: Colors.blue,
                  height: size.height * 0.4,
                  width: size.width * 0.9,
                 child: Opacity( 
                   opacity: 0.5,
                   child: Image.asset("assets/images/logo.png",),
                )),
                
                
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
              // Divider(height: size.height * 0.15, color: Colors.transparent),
              TextField(
  //              autofocus: true,
                keyboardType: TextInputType.text,
                controller: dados,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                                labelText: "Voluntário",
                                hintText: "Digite seu nome",
                                labelStyle: TextStyle( color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black),
                    
                              ),
                  prefixIcon: Icon(Icons.person, color: Colors.black),
                
                
                  ),  
              ),    
              Divider(height: size.height * 0.1,  color: Colors.transparent),
              
              
              TextField(
//                autofocus: true,
                keyboardType: TextInputType.text,
                controller: dados1,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                                labelText: "Local da coleta (grupo)",
                                hintText: "Digite o local",
                                labelStyle: TextStyle( color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black),
                    
                              ),
                  prefixIcon: Icon(Icons.place, color: Colors.black),
                
                
                  ),  
              ),
                  ])),

              Divider(height: size.height * 0.15, color: Colors.transparent),


                
              ],
            ),
               Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.07,
                  child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.060,
                          child: RaisedButton(
                                  color: Colors.transparent,
                                  
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0), side: BorderSide(color: Colors.black, width: 1.0, style: BorderStyle.solid)),
                        
                                  onPressed:nextpage,
                                  child: Text("Salvar", style: TextStyle(color: Colors.white70, fontSize: 20))                       
                        )),
                ),   

                    ])      ),
        ),
      
      )
    );
    
    
  }


/*onclick() {
    setState(() {
      //print("Whatever" + pessoa[0]);
      nextpage();
    });
    // print('ok');
  }*/

  nextpage() {
    Navigator.pushNamed(context, "/telainicial");
  }
}

