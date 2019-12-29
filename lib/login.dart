import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.landscape
          ? SingleChildScrollView(child: ContentArea())
          : ContentArea(),
    );
  }
}

class ContentArea extends StatelessWidget {
  const ContentArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FormLogin(),
        Flexible(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(
                      onChanged: (_){},
                      value: false,
                      activeColor: Colors.purple,
                    ),
                    Text(
                      'Ingat Aku',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.purple),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    RaisedButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.bottomLeft,
                            colors: <Color>[Colors.pink,Colors.purple],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(80.0),
                          ),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 36.0,
                            minWidth: 160.0,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Masuk',
                            style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30,),
                      child: Text(
                        'Belum Punya Akun ?',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'Daftar',style:TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Divider(),
                SocialMedia(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SocialMedia extends StatelessWidget{
  const SocialMedia({
    Key key,
}) : super (key : key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: (){},
            child: Image.asset(''),
            backgroundColor: Colors.blueAccent,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: (){},
            child: Image.asset(''),
            backgroundColor: Colors.lightBlueAccent,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: (){},
            child: Image.asset(''),
            backgroundColor: Colors.red,
          ),
        ),
      ],
    );
  }
}

class FormLogin extends StatelessWidget{
  const FormLogin({
    Key key,
}) : super (key : key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Flexible(
      flex: 2,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
          ),
//          Container(
//            height: MediaQuery.of(context).size.height/2.4,
//            decoration: BoxDecoration(
//              color: Colors.white,
//              image: DecorationImage(
//                image: AssetImage('assets/images/gawe.png',),
//                fit: BoxFit.fill,
//              ),
//            ),
//          ),
          Positioned(
            top: MediaQuery.of(context).size.height/3.6,
            child: Container(
              width: 410,
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'Silahkan Login',style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.email, color: Colors.purple,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                          labelText: "Email : ",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.purple
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.security,color: Colors.purple,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,bottom: 5,right: 15.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Lupa Password ?',style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
