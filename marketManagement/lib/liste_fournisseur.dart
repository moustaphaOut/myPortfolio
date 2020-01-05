import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Liste_Fournisseurs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Liste_FournisseursState();
  }
}

class _Liste_FournisseursState extends State<Liste_Fournisseurs> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  
  @override
  Widget build(BuildContext context) {
  
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 1920, height: 1001)..init(context);
    //If you want to set the font size is scaled according to the system's "font size" assist option
    ScreenUtil.instance = ScreenUtil(width: 1920, height: 1001, allowFontScaling: true)..init(context);
    
    return LayoutBuilder(builder: (ctx, constraints) {
      final curScaleFactor = MediaQuery.of(ctx).textScaleFactor;
      return Scaffold(
          body: Container(
        width: double.infinity,
        color: Color.fromARGB(200, 240, 240, 247),
        child: Row(children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 1.0,
              color: Color.fromARGB(250, 67, 66, 93),
              child: Column(children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.black,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Bellefkih Store",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22 * curScaleFactor,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.supervised_user_circle,
                        size: 28, color: Colors.white),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      "Gestion des utilisateurs",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18 * curScaleFactor,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: 15,
                ),
                Row(children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.today, size: 28, color: Colors.blue),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      "Gestion des fournisseurs",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18 * curScaleFactor,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: 15,
                ),
                Row(children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.group,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      "Gestion des clients",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18 * curScaleFactor,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: 15,
                ),
                Row(children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.category, size: 28, color: Colors.white),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      "Gestion des produits",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18 * curScaleFactor,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: 15,
                ),
                Row(children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.category, size: 28, color: Colors.white),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      "Gestion des catégories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18 * curScaleFactor,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
              ]),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(children: <Widget>[
              AppBar(
                title: Text(
                  "Listes des fournisseurs",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22 * curScaleFactor,
                    color: Color.fromARGB(200, 95, 161, 252),
                  ),
                ),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"),
                  ),
                ),
                backgroundColor: Colors.white,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: null,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        child: Text('Ajouter'),
                        onPressed: () {
                          print('Device width:${ScreenUtil.screenHeight}');
                        },
                        color: Colors
                            .blue, //specify background color for the button here
                        colorBrightness: Brightness
                            .dark, //specify the color brightness here, either `Brightness.dark` for darl and `Brightness.light` for light
                        disabledColor: Colors
                            .blueGrey, // specify color when the button is disabled
                        highlightColor: Colors
                            .red, //color when the button is being actively pressed, quickly fills the button and fades out after
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  width: 1000,
                  height: 500,
                  child: Card(
                    elevation: 20,
                    child: Container(child: 
                      Column(
                       children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Row(children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Fournisseurs",
                            style: TextStyle(fontSize: 15 * curScaleFactor),
                          ),
                        ]),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.grey,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                              ),
                              Text("Nom de l'entreprise",
                                  style:
                                      TextStyle(fontSize: 15 * curScaleFactor)),
                              SizedBox(
                                width: 30,
                              ),
                              Text("Adresse",
                                  style:
                                      TextStyle(fontSize: 15 * curScaleFactor)),
                              SizedBox(
                                width: 30,
                              ),
                              Text("Nom de contact",
                                  style:
                                      TextStyle(fontSize: 15 * curScaleFactor)),
                              SizedBox(
                                width: 30,
                              ),
                              Text("Num télephone  \n de contact",
                                  style:
                                      TextStyle(fontSize: 15 * curScaleFactor)),
                              SizedBox(
                                width: 30,
                              ),
                              Text("Email de \n l'entreprise",
                                  style:
                                      TextStyle(fontSize: 15 * curScaleFactor)),
                              SizedBox(
                                width: 30,
                              ),
                              Text("email de contact",
                                  style:
                                      TextStyle(fontSize: 15 * curScaleFactor)),
                              SizedBox(
                                width: 30,
                              ),
                              Text("Exigence de \n livraison",
                                  style:
                                      TextStyle(fontSize: 15 * curScaleFactor)),
                              SizedBox(
                                width: 30,
                              ),
                              Text("Action",
                                  style:
                                      TextStyle(fontSize: 15 * curScaleFactor)),
                            ],
                          ),
                        ),
                        Expanded(child:
                        Container(
                            child: SizedBox(
                                height: 200,
                                child: ListView.builder(
                                    padding: const EdgeInsets.all(8),
                                    itemCount: entries.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        height: 50,
                                        color: Colors.amber[colorCodes[index]],
                                        child: Center(
                                            child: Text(
                                                'Entry ${entries[index]}')),
                                      );
                                  }
                                )
                            )
                          ),
                        ),
                      ],
                     ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ));
    });
  }
}
