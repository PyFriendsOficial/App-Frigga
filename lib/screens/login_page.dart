import 'package:app_violencia/screens/map_screen.dart';
import 'package:app_violencia/tabs/help_tab.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  String _userMail = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("Login Voluntário"),
        backgroundColor: Colors.purple,
        ),
      body:
      
    Padding(
      padding: const EdgeInsets.all(16.0),
      child:
      Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(hintText: 'E-mail'),
            keyboardType: TextInputType.emailAddress,
            validator: (value){
              if(value.isEmpty || !value.contains("@")){
                return "E-mail inválido";
              }
              else{
                _userMail = "admin@gmail.com";
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'Senha'),
            obscureText: true,
            validator: (value){
              if(value.isEmpty){
                return "Senha Incorreta e/ou Inválida";
              }
              else{
                _password = "admin123";
              }
            },
          ),
          SizedBox(height: 40.0,),
          ButtonTheme(
            buttonColor: Colors.black,
            child:
            RaisedButton(
              onPressed: (){
                if(_formKey.currentState.validate()){
                  //Inserindo um usuário ficticio direto, arrumar e colocar o sistema de login correto
                  if(_userMail == "admin@gmail.com" && _password == "admin123"){
                  //Fazendo o registro de um novo chamado, criar aqui!!!
                  _sendHelp();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MapPage()));
                  }
                }
              },
              child: Text(
                "Enviar Denuncia",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
            ),
          ),
        ],
      ),
      ),
    ),
    );
  }

  bool _validateEmail(mail){
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(mail);
    if(emailValid == true){
      return true;
    }
    else{
      return false;
    }
  }

  void _sendHelp(){}

}