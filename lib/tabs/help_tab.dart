import 'package:flutter/material.dart';



class HelpTab extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: ListView(
        children: <Widget>[
          Align(
            child: Text(
              "Ajuda",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 40.0,
                fontFamily: "roboto",
                fontWeight: FontWeight.w300
              ),
              ),
          ),
          SizedBox(
              height: 20.0,
            ),
          SizedBox(
            height: 150.0,
            child: Image.asset("assets/Ajuda1.png"),
          ),
          SizedBox(
              height: 20.0,
            ),
          Column(
            children: <Widget>[
              ButtonTheme(
                buttonColor: Colors.white,
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                onPressed: () {},
                child: Text("Preciso de Ajuda"),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
              ButtonTheme(
                buttonColor: Colors.white,
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                onPressed: () {},
                child: Text("Quero Denunciar"),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
              ButtonTheme(
                buttonColor: Colors.white,
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                onPressed: () {},
                child: Text("Login de Voluntário"),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
              ButtonTheme(
                buttonColor: Colors.white,
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                onPressed: () {},
                child: Text("Quero Ser Voluntário"),
              ),
            ),
            ],
          ),
        ],
      ),
    );
  }
}
