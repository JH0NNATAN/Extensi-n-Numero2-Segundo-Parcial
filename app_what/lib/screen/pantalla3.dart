import 'package:flutter/material.dart';

class PantallaElementosUI extends StatefulWidget {
  const PantallaElementosUI({super.key});
  @override
  State<PantallaElementosUI> createState() => _PantallaElementosUI();
}
class _PantallaElementosUI extends State<PantallaElementosUI> {
  double fontSize = 38;
  bool bold = false;
  bool italic = false;
  Alignment alineacionTexto = Alignment.center;
  Color colorTexto = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elementos UI'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                alignment: alineacionTexto,
                child: Text(
                  'Hola Flutter',style: TextStyle(
                    fontSize: fontSize,
                    color: colorTexto,
                    fontWeight: bold
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontStyle: italic
                        ? FontStyle.italic
                        : FontStyle.normal,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text('fontSize: ${fontSize.toInt()}',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                Slider(
                  value: fontSize,
                  min: 10,
                  max: 60,
                  onChanged: (value) {
                    setState(() {
                      fontSize = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Bold:',style: TextStyle(fontWeight: FontWeight.bold,),),
                    Switch(
                      value: bold,
                      onChanged: (value) {
                        setState(() {
                          bold = value;
                        });
                      },
                    ),
                    Text('Italic:',style: TextStyle(fontWeight: FontWeight.bold,),),
                    Switch(
                      value: italic,
                      onChanged: (value) {
                        setState(() {
                          italic = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          alineacionTexto=Alignment.centerLeft;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 35,
                        decoration: BoxDecoration(
                          color: alineacionTexto==Alignment.centerLeft
                              ? Colors.blue
                              : Colors.grey.shade300,
                          border: Border.all(),
                        ),
                        child:Icon(Icons.format_align_left,),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          alineacionTexto=Alignment.center;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 35,
                        decoration: BoxDecoration(
                          color: alineacionTexto ==
                                  Alignment.center
                              ? Colors.blue
                              : Colors.grey.shade300,
                          border: Border.all(),
                        ),
                        child:Icon(Icons.format_align_center,),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          alineacionTexto=Alignment.centerRight;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 35,
                        decoration: BoxDecoration(
                          color: alineacionTexto==Alignment.centerRight
                              ? Colors.blue
                              : Colors.grey.shade300,
                          border: Border.all(),
                        ),
                        child: Icon(Icons.format_align_right,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                  Text('Color:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          colorTexto = Colors.red;
                        });
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.red,
                        child: colorTexto == Colors.red
                            ? Icon(Icons.check,color: Colors.white,): null,
                            ),
                    ), 
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          colorTexto = Colors.black;
                        });
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor:Colors.black,
                        child: colorTexto ==Colors.black
                            ? Icon(Icons.check,color: Colors.white,): null,
                            ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          colorTexto =Colors.green;
                        });
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor:Colors.green,
                        child: colorTexto ==Colors.green
                            ? Icon(Icons.check,color: Colors.white,): null,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          colorTexto =Colors.blue;
                        });
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor:
                            Colors.blue,
                        child: colorTexto ==Colors.blue
                            ? Icon(Icons.check,color: Colors.white,): null,
                            ),
                    ),
                  ],
                ),
               SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}