import 'package:app_violencia/tabs/help_tab.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("Formulário de Denuncia"),
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
            decoration: InputDecoration(hintText: 'Local Do crime'),
            validator: (value){
              if(value.isEmpty)
                return "Campo Vazio";
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'O que está acontecendo'),
            validator: (value){
              if(value.isEmpty)
                return "Campo Vazio";
            },
          ),
          SizedBox(height: 40.0,),
          ButtonTheme(
            buttonColor: Colors.black,
            child:
            RaisedButton(
              onPressed: (){
                if(_formKey.currentState.validate()){
                  //Fazendo o registro de um novo chamado, criar aqui!!!
                  _sendHelp();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HelpTab()));
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

  void _sendHelp(){}

}