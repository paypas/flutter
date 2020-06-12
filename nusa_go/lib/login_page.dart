import 'package:flutter/material.dart';
import 'package:nusa_go/home_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var txtemail = new TextEditingController();
  var txtpassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final logo = Image(
        fit: BoxFit.fill,
        image: new AssetImage('assets/nusa_go.png'),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: txtemail,
      cursorColor: Color(int.parse("#93d1ce".substring(1, 7), radix: 16) + 0xFF000000),
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        
      ),
    );

    final password = TextFormField(
      autofocus: false,
      controller: txtpassword,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

//    final password2 = new TextField(controller: txt);

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.blueGrey.shade200,
        elevation: 5.0,
        color: Color(int.parse("#93d1ce".substring(1, 7), radix: 16) + 0xFF000000),

        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            if(txtemail.text == "adearmawi" && txtpassword.text == "ade armawi"){
              Navigator.of(context).pushNamed(HomePage.tag);
            }else{

            }
          },
          child: Text('Masuk', style: TextStyle(color: Colors.white)),
        ),
      ),
    );



    final register = Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(),
        new Text(
          'Belum Punya Akun? ',
          style: TextStyle(color: Color(int.parse("#233b44".substring(1, 7), radix: 16) + 0xFF000000)),
        ),
        new InkWell(
          child:
            Text(
              'Daftar',
              style: TextStyle(color: Color(int.parse("#233b44".substring(1, 7), radix: 16) + 0xFF000000), fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontStyle: FontStyle.italic),
            ),
          onTap: () {},
        )
      ]
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Color(int.parse("#233b44".substring(1, 7), radix: 16) + 0xFF000000), fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontStyle: FontStyle.italic),
      ),
      onPressed: () {},
    );

    final body = Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/latar.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            register,
            forgotLabel
          ],
        ),
    );

    return Scaffold(
      appBar: new AppBar(
        title: new Text('Masuk', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Color(int.parse("#3a6372".substring(1, 7), radix: 16) + 0xFF000000),
        centerTitle: true,
        leading: BackButton(
            color: Colors.white
        ),
      ),
      backgroundColor: Colors.white,
      body: body,
    );
  }
}