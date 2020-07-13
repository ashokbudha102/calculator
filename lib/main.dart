import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String var1='';
  String var2='';
  String oper1="";
  String expres="";
  String result="";
  List operators1=['×','÷','=','+','-','+','⎋'];

  String gettext(String a){
    return a;
  }
  void resultant(a)
  {
    if(a!='C' && a!='=' && a!='⎋')
    {
      setState(() {
        expres = expres + a;
      });
      if (operators1.contains(a))
      {oper1=a;}
    }
    else if(a=='⎋')
    {
      setState(() {
        if (expres.length==0) {
          return;
        }
        else
          {
            setState(() {
              expres=expres.substring(0,expres.length-1 );
            });
          }
          });
      }
    else if (a=='=')
    {
      List numbers=expres.split(RegExp(r'[×÷++-]'));
      if(oper1=='-')
      {
        double result1=double.parse(numbers[0])-double.parse(numbers[1]);
        result=result1.toString();
      }
      else if (oper1=='×')
      {
        double result1=double.parse(numbers[0])*double.parse(numbers[1]);
        result=result1.toString();
      }
      else if (oper1=='÷')
      {
        double result1=double.parse(numbers[0])/double.parse(numbers[1]);
        result=result1.toString();
      }
      else
      {
        double result1=double.parse(numbers[0])+double.parse(numbers[1]);
        result=result1.toString();
      }
      setState(() {
        expres=result;
      });


    }
    else
    {return;}


//        }
//        else if (operators.contains(a)==true)
//        {
//          do {
//            setState(() {
//              oper1 = a;
//            });
//          } while(oper1.length==1);

//        }
//        else{
//          return ;
//        }



  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: Colors.grey[900],
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.fromLTRB(2.0,5.0,2.0,0.0),
                    child: Text('$expres',
                      style:TextStyle(
                        fontSize: 80.0,
                        color: Colors.white,
                      ),
                    ),
                    height: 160,

                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 5.0,
                  ),

                  Row(
                    children: <Widget>[
                      Container(
                        height: 80.0,
                        child: FlatButton(
//                  disabledColor: Colors.grey,
//                  disabledTextColor: Colors.black,
                          onPressed: (){
                            setState(() {
                              expres='';
                              var2='';
                              oper1='';
                              result='';
                            });
                          },
                          child: Text('C',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.red[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('÷'));
                          },
                          child: Text('÷',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.grey[500],
                          textColor: Colors.black,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80 ,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('×'));
                          },
                          child: Text('×',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.grey[500],
                          textColor: Colors.black,
                        ),
                      ),
                      SizedBox(width: 1.0),
                      Container(
                        height: 80.0,
                        color: Colors.grey[500],
                        child: FlatButton(
                          child: Icon(
                            Icons.backspace,
                          ),
                          onPressed: (){
                            resultant(gettext('⎋'));
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        child: FlatButton(
//                  disabledColor: Colors.grey,
//                  disabledTextColor: Colors.black,
                          onPressed: (){
                            resultant(gettext('7'));
                          },
                          child: Text('7',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              resultant(gettext('8'));
                            });
                          },
                          child: Text('8',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('9'));
                          },
                          child: Text('9',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('-'));
                          },
                          child: Text('-',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.grey[500],
                          textColor: Colors.black,
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        child: FlatButton(
//                  disabledColor: Colors.grey,
//                  disabledTextColor: Colors.black,
                          onPressed: (){
                            resultant(gettext('4'));
                          },
                          child: Text('4',
                              style:TextStyle(
                                fontSize: 20.0,
                              )), color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('5'));
                          },
                          child: Text('5',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('6'));
                          },
                          child: Text('6',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('+'));
                          },
                          child: Text('+',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.grey[500],
                          textColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        child: FlatButton(
//                  disabledColor: Colors.grey,
//                  disabledTextColor: Colors.black,
                          onPressed: (){
                            resultant(gettext('1'));
                          },
                          child: Text('1',
                              style:TextStyle(
                                fontSize: 20.0,
                              )), color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('2'));
                          },
                          child: Text('2',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('3'));
                          },
                          child: Text('3',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width: 1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('.'));
                          },
                          child: Text('.',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width: 1.0),

                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('0'));
                          },
                          child: Text('0',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('00'));
                          },
                          child: Text('00',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.blue[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),
                      Container(
                        height: 80,
                        width: 176,
                        child: FlatButton(
                          onPressed: (){
                            resultant(gettext('='));
                          },
                          child: Text('=',
                              style:TextStyle(
                                fontSize: 20.0,
                              )),
                          color: Colors.red[400],
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(width:1.0),


                    ],
                  ),
                ]
            ),
          ),
        )
    );
  }
}
// 238B⎋