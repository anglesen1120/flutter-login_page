import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.pinkAccent, Colors.purple],
            ),
          ),
          padding: EdgeInsets.only(top: 250,left: 30,right: 30,bottom: 30),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 100,right: 100,bottom: 30),
                child: Image.asset('assets/images/gaweLogo.png'),
              ),
              Text(
                'Cari Tukang dan Teknisi Berpengelaman sesuai kebutuhanmu ',style: TextStyle(fontSize: 15,color: Colors.white,),textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/login");
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.only(left: 120,right: 100),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Mulai Aja Dulu',style: TextStyle(fontWeight: FontWeight.bold),),
                        Divider(),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}