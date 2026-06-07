import 'package:flutter/material.dart';

class PantallaColumnRow extends StatefulWidget {
  const PantallaColumnRow({super.key});

  @override
  State<PantallaColumnRow> createState() => _PantallaColumnRowState();
}

class _PantallaColumnRowState extends State<PantallaColumnRow> {
  bool modoColumn = true;
  MainAxisAlignment mainAxisAlign = MainAxisAlignment.center;
  CrossAxisAlignment crossAxisAlign = CrossAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Column y Row'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: modoColumn
                ? Column(
                    mainAxisAlignment: mainAxisAlign,
                    crossAxisAlignment: crossAxisAlign,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color:  Colors.yellow,
                          border: Border.all(color: Colors.black54),
                        ),
                        child: const Center(
                          child: Text('A',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.black54),
                        ),
                        child: const Center(
                          child: Text('B',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.black54),
                        ),
                        child: const Center(
                          child: Text('C',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: mainAxisAlign,
                    crossAxisAlignment: crossAxisAlign,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color:  Colors.yellow,
                          border: Border.all(color: Colors.black54),
                        ),
                        child: const Center(
                          child: Text('A',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.black54),
                        ),
                        child: const Center(
                          child: Text('B', style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.black54),
                        ),
                        child: const Center(
                          child: Text('C', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
          ),
          Divider(height: 1, thickness: 1),
          Expanded(
            flex: 2,
            child: Padding(
              padding:
                 EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Modo:',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text('Column'),
                      Switch(
                        value: !modoColumn,
                        onChanged: (value) {
                          setState(() {
                            modoColumn = !value;
                          });
                        },
                      ),
                      Text('Row'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'mainAxisAlignment:',
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            mainAxisAlign = MainAxisAlignment.start;
                          });
                        },
                        child: Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            color: mainAxisAlign == MainAxisAlignment.start
                                ? Colors.blue
                                : Colors.grey.shade300,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(child: Text('start')),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            mainAxisAlign = MainAxisAlignment.center;
                          });
                        },
                        child: Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            color: mainAxisAlign == MainAxisAlignment.center
                                ? Colors.blue
                                : Colors.grey.shade300,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(child: Text('center')),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            mainAxisAlign = MainAxisAlignment.end;
                          });
                        },
                        child: Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            color: mainAxisAlign == MainAxisAlignment.end
                                ? Colors.blue
                                : Colors.grey.shade300,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(child: Text('end')),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25),
                  Text(
                    'crossAxisAlignment:',
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            crossAxisAlign = CrossAxisAlignment.start;
                          });
                        },
                        child: Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            color: crossAxisAlign == CrossAxisAlignment.start
                                ? Colors.blue
                                : Colors.grey.shade300,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(child: Text('start')),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            crossAxisAlign = CrossAxisAlignment.center;
                          });
                        },
                        child: Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            color: crossAxisAlign == CrossAxisAlignment.center
                                ? Colors.blue
                                : Colors.grey.shade300,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(child: Text('center')),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            crossAxisAlign = CrossAxisAlignment.end;
                          });
                        },
                        child: Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            color: crossAxisAlign == CrossAxisAlignment.end
                                ? Colors.blue
                                : Colors.grey.shade300,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(child: Text('end')),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}