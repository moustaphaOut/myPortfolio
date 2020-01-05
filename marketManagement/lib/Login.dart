import 'package:example_flutter/CategoryView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'liste_fournisseur.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoginState();
  }
}

class _LoginState extends State<Login> {

  

  @override
  Widget build(BuildContext context) {
    final curScaleFactor = MediaQuery.of(context).textScaleFactor;
    final assetImage = AssetImage('assets/images/login.jpg');
    final assetImage1 = AssetImage('assets/images/stock.jpg');
    bool monVal = false;

    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: assetImage, fit: BoxFit.cover),
      ),
      child: Center(
        child: Container(
          height: 370,
          width: 500,
          child: Card(
            color: Colors.black.withOpacity(0.7),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: assetImage1,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(100.0)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 430,
                  child: TextFormField(
                      autofocus: true,
                      showCursor: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 430,
                  child: TextFormField(
                    autofocus: true,
                    showCursor: true,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                    ),
                    Checkbox(
                      value: monVal,
                      activeColor: Colors.white,
                      hoverColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          monVal = value;
                        });
                      },
                    ),
                    Text(
                      "Souviens de moi",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      "Mot de passe oublié",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 370,
                    ),
                    RaisedButton(
                      child: Text('Login'),
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryView()));
                      },
                      color: Colors.blue, //specify background color for the button here
                      colorBrightness: Brightness.dark, //specify the color brightness here, either `Brightness.dark` for darl and `Brightness.light` for light
                      disabledColor: Colors.blueGrey, // specify color when the button is disabled
                      highlightColor: Colors.red, //color when the button is being actively pressed, quickly fills the button and fades out after
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
