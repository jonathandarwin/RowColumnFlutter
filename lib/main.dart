import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Row and Column",
      home: RowColumn(),
    );
  }
}

class button extends StatelessWidget{

  String text;
  Color color;  
  button(this.text, this.color);

  @override
  Widget build(BuildContext context){
    return RaisedButton(      
      onPressed: (){},
      child: Text(text),
      color: color,
      textColor: Colors.white
    );
  }
}


class header extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(      
      child: Container(
        color: Colors.red,                    
        child: Center(
          child: Text("Header", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

class navigation extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(      
      child: Container(
        color: Colors.yellow,                    
        child: Center(
          child: Text("Navigation", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

class content extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(      
      child: Container(
        color: Colors.blue,                    
        child: Center(
          child: Text("Contents", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

class footer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Container(
        child: Center(
          child: Text("Footer", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

class RowColumn extends StatelessWidget{  
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column") ,
        backgroundColor: Colors.blue,
      ),      
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Row(
                children: <Widget>[
                  header()
                ],
              ),
            )
          ),
          Expanded(
            flex: 7,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 3,                  
                  child: Container(
                    color: Colors.yellow,
                    child: Column(
                      children: <Widget>[
                        navigation()
                      ],
                    ),
                  ),
                ),
                Expanded(  
                  flex: 7,                                  
                  child: Container(
                    color: Colors.yellow,
                    child: Column(
                      children: <Widget>[
                        content()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Row(
                children: <Widget>[
                  footer()
                ],
              ),
            )
          )
        ],
      )
    );
  }
}