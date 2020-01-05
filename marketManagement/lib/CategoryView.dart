import 'package:example_flutter/model/student_model.dart';
import 'package:example_flutter/services/product_services.dart';
import 'package:example_flutter/services/student_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path/path.dart';
import 'dart:convert';

class CategoryView extends StatefulWidget {
    static String tag = 'CategoryView';
  @override
  State<StatefulWidget> createState() {
    return new _CategoryView();
  }
}
/*Future db(BuildContext context) async {
  String data = await DefaultAssetBundle.of(context).loadString('db.json');

  final jsonResult = json.decode(data.toString());

  final db = await databaseFactoryIo
      .openDatabase(join('.dart_tool', 'sembast', 'example', 'record_demo.db'));
  var store = intMapStoreFactory.store('my_store');
  
  var key = await store.add(db, jsonResult);
  //
 
  //
  var record = await store.record(key).getSnapshot(db);
  var value = record['products'];
  print("-------------------------------------------------------------------------------------------------------------");
  print(value[0]['name']);
  print("-------------------------------------------------------------------------------------------------------------");
  /*record =
      (await store.find(db, finder: Finder(filter: Filter.byKey(record.key))))
          .first;
  print(record);
  var records = (await store.find(db,
      finder: Finder(filter: Filter.matches('name', '^ugly'))));*/
}*/

class _CategoryView extends State<CategoryView> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  Student post = Student(
      studentId: 'Testing body body body',
      studentName:'Flutter jam6',
      studentScores: 17
    );

  @override
  void initState() {
    //db();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  //  db(context);
    loadStudent();
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 1920, height: 1001)..init(context);
    //If you want to set the font size is scaled according to the system's "font size" assist option
    ScreenUtil.instance =
        ScreenUtil(width: 1920, height: 1001, allowFontScaling: true)
          ..init(context);

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
                          'Bellefkih Store',
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
                      'Gestion des utilisateurs',
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
                    child: Icon(Icons.today, size: 28, color: Colors.white),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Gestion des fournisseurs',
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
                    child: Icon(
                      Icons.group,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Gestion des clients',
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
                      'Gestion des produits',
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
                    child: Icon(Icons.category, size: 28, color: Colors.blue),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Gestion des catégories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18 * curScaleFactor,
                        color: Colors.blue,
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
                  'Listes des fournisseurs',
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
                        'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg'),
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
              DataTable(
                sortAscending: true,
                sortColumnIndex: 1,
                columns: [
                  DataColumn(label: Text('Id'), numeric: true),
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Action')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('Clasique')),
                    DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.delete),
                        Icon(Icons.update)
                      ],
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2')),
                    DataCell(Text('Traditionel')),
                    DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.delete),
                        Icon(Icons.update)
                      ],
                    )),
                  ]),
                ],
              )
            ]),
          ),
        ]),
      ));
    });
  }
}
