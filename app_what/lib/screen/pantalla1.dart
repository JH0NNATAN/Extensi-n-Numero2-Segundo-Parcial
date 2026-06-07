import 'package:flutter/material.dart';

class PantallaContainer extends StatefulWidget {
  const PantallaContainer({super.key});

  @override
  State<PantallaContainer> createState() => _PantallaContainer();
}

class _PantallaContainer extends State<PantallaContainer> {
  double width=150;
  double height=150;
  Color color=Colors.amber;
  double borderRadius=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla container"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:Column(
          children: [
            Expanded(
              child: Center(
                child:SizedBox(
                  width: width,
                  height: height,
                  child: Container(
                   
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(borderRadius),
                      
                    ),
                    child:Center(
                      child: Text("Container")
                    )
                  ),
                  ),
                ),
              ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                    Text("ancho :${width.toInt()} px"),
                    Slider (
                      value: width,
                      min: 0,
                      max: 150,
                      activeColor: Colors.purple,
                      onChanged: (value) {
                        setState(() {
                          width=value;
                        });
                       
                      },

                    ),
                    Text("alto :${height.toInt()} px"),
                    Slider (
                      value: height,
                      min: 0,
                      max: 150,
                      activeColor: Colors.purple,
                      onChanged: (value) {
                        setState(() {
                          height=value;
                        });
                       
                      },

                    ),
                    Text("radio :${borderRadius.toInt()} px"),
                    Slider (
                      value: borderRadius,
                      min: 0,
                      max: 150,
                      activeColor: Colors.purple,
                      onChanged: (value) {  
                        setState(() {
                          borderRadius=value;
                        }); 
                      },
                    ),
                    Text("color"),
                    Row(children: [
                      IconButton(
                        onPressed: () {   
                          setState(() {
                            color=Colors.red;
                          });                 
                        },
                        icon: Icon(Icons.circle,size:50,), color: Colors.red,
                      ),
                       IconButton(
                        onPressed: () { 
                          setState(() {
                            color=Colors.yellow;
                          });                   
                        },
                        icon: Icon(Icons.circle,size:50,), color: Colors.yellow,
                      ),
                       IconButton(
                        onPressed: () { 
                          setState(() {
                            color=Colors.green;
                          });                   
                        },
                        icon: Icon(Icons.circle,size:50,), color: Colors.green,
                      ),
                       IconButton(
                        onPressed: () {
                          setState(() {
                            color=Colors.blue;
                          });         
                        },
                        icon: Icon(Icons.circle,size:50,), color: Colors.blue,
                      ),

                    ],)
                    ]
                  )
                )
            )
          ],
      )
    );
  }
}