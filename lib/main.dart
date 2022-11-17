import 'package:demo/firstpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: splash(),
    debugShowCheckedModeBanner: false,
    color: Colors.green[100],
  ));
}

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Select Mode"),
      ),
      drawer: Container(),
      /*bottomNavigationBar: BottomNavigationBar(items: List.empty()),*/
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("myimage/fondo_imagenes.png"),
                fit: BoxFit.fill)),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 250),
                decoration: BoxDecoration(color: Colors.teal[100],borderRadius: BorderRadius.all()),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return firstpage();
                            },
                          ));
                        },
                        child: Text("NOT TIME LIMIT"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("NORMAL"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          ElevatedButton(onPressed: () {}, child: Text("HARD")),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  List<Color> a = [
    Colors.black,
    Colors.blueGrey,
    Colors.blue,
    Colors.greenAccent,
    Colors.green,
    Colors.amberAccent,
    Colors.lightBlueAccent,
  ];
  Color bgcolor = Colors.indigoAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Gridview"),),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 300,
                color: bgcolor,
                alignment: Alignment.center,
                child: Text("hello", style: TextStyle(fontSize: 25),),
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: () {
                    showModalBottomSheet(
                        isDismissible: false,
                        barrierColor: Colors.transparent,
                        backgroundColor: Colors.white24,
                        builder: (context) {
                          return Container(
                            height: 130,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: GridView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: a.length,
                                  itemBuilder: (context, index) {
                                    return GridTile(child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          bgcolor = a[index];
                                        });
                                      },
                                      child: Container(
                                        color: a[index],

                                      ),
                                    ));
                                  },
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 5,
                                      childAspectRatio: 1,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10
                                  ),),
                                ),
                                IconButton(onPressed: () {
                                  Navigator.pop(context);
                                }, icon: Icon(Icons.close))
                              ],
                            ),
                          );
                        },
                        context: context);
                  }, child: Container(

                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}*/
