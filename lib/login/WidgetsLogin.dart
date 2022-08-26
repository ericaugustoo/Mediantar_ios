import "package:flutter/material.dart";

class Caixatxtlogin extends StatefulWidget {
  @override
  _CaixatxtloginState createState() => _CaixatxtloginState();
}

class _CaixatxtloginState extends State<Caixatxtlogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.name,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(color: Colors.black)),
                ),    
    );
  }
}