import "package:flutter/material.dart";
void main(){
  runApp(MainPage());
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Login",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:SafeArea(child: RaisedButton(
          child: Text("Click"),
          color: Colors.blue,
          onPressed: (){
            Navigator.of(context).push(PageRouteBuilder(
                opaque: false,
                barrierDismissible: true,
                barrierColor: Colors.red[500].withOpacity(0.5),
                pageBuilder: (context,_,__){
                  return Center(
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                      )
                  );
                }
            ));
          }
      ))
    );
  }
}