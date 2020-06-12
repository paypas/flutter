import 'package:flutter/material.dart';
import 'package:nusa_go/fragments/homeFragment.dart';
import 'package:nusa_go/fragments/searchFragment.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nusa-Go',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Nusa-Go'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter(index) {
    setState(() {
      _counter = index;
    });
  }


  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeFragment();
      case 1:
        return new SearchFragment();
//        case 2:
//          return new ThirdFragment();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _counter = index);
  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
        onWillPop: () async {
          if(_counter != 0){
            _onSelectItem(0);
            return false;
          }else{
            return true;
          }
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: _getDrawerItemWidget(_counter),
            bottomNavigationBar:BottomNavigationBar(
                currentIndex: _counter,
                type: BottomNavigationBarType.shifting,
                items: [
                  new BottomNavigationBarItem(icon: new SizedBox(height: 35, child: IconButton(icon: Image.asset('assets/images/home.png'), onPressed: null),), title: Text("Beranda")),
                  new BottomNavigationBarItem(icon: new SizedBox(height: 35, child: IconButton(icon: Image.asset('assets/images/cari.png'),onPressed: null),), title: Text("Cari")),
                  new BottomNavigationBarItem(icon: new SizedBox(height: 35, child: IconButton(icon: Image.asset('assets/images/obrolan.png'),onPressed: null),), title: Text("Obrolan")),
                  new BottomNavigationBarItem(icon: new SizedBox(height: 35, child: IconButton(icon: Image.asset('assets/images/profil.png'),onPressed: null),), title: Text("Profil"))
                ],
                onTap: (index){_onSelectItem(index);}
            )
        ),
    );
  }
}
