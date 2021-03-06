import 'package:app_violencia/screens/form_page.dart';
import 'package:app_violencia/tabs/help_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_recorder/flutter_audio_recorder.dart';

class ReportScreen extends StatefulWidget {
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child:
      ListView(
        children: <Widget>[
          Align(
            child: Text(
              "Quero Denunciar",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 40.0,
                fontFamily: "roboto",
                fontWeight: FontWeight.w300
              ),
              ),
          ),
          SizedBox(height: 40,),
          SizedBox(
            height: 140.0,
            child:
            Image.asset(
              "assets/atencao1.png"
            ),
          ),
          SizedBox(height: 40,),
          Align(
            child:
            ButtonTheme(
                buttonColor: Colors.black,
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                onPressed: () {
                  _searchHelp();
                  print(_startRecording());
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FormScreen()));
                },
                child: Text(
                  "Continuar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Align(
            child:
            ButtonTheme(
                buttonColor: Colors.black,
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HelpTab()));
                },
                child: Text(
                  "Cancelar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _searchHelp(){
    print("A função de ajuda é aqui");
    
  }

  
  // ignore: missing_return
  Future<Recording> _startRecording() async {
    bool hasPermission = await FlutterAudioRecorder.hasPermissions;
    if(hasPermission){
      var recorder = FlutterAudioRecorder("assets/audios.mp4"); // .wav .aac .m4a
      await recorder.start();
      var recording = await recorder.current(channel: 0);
      
      return recording;
    }

}
}