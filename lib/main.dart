import 'package:flutter/material.dart';

void main() {
  int n = 0;
  void soma() {
    n++;
    print(n);
  }

  void sub() {
    n--;
    print(n);
  }

  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: ${n}", 
              style: TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("+1", style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    )),
                    onPressed: ()  {
                      soma();
                    },
                  ),  
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("-1", style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    )),
                    onPressed: ()  {
                      sub();
                    },
                  ),
                )
              ],
            ),
            Text(
              "Pode Entrar", 
              style: TextStyle(
                color: Colors.white, 
                fontSize: 30,
                fontStyle: FontStyle.italic,
              )
            )
          ],
        )
      ],
    )
    
  ));
}
