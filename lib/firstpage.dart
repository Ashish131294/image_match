import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  List imglist = [
    "ardilla.png",
    "bellota.png",
    "cerezas.png",
    "ardilla.png",
    "bellota.png",
    "cerezas.png",
    "coche.png",
    "cubo.png",
    "flamenco.png",
    "coche.png",
    "cubo.png",
    "flamenco.png"
  ];

  List visiblelist = List.filled(12, true);
  int t = 1;
  int pos1 = 0;
  String str1 = "";
  String str2 = "";

  @override
  void initState() {
    imglist.shuffle();
    get();
  }

  get() async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      visiblelist = List.filled(12, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
            itemCount: imglist.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    if (t == 1) {
                      print("first click");
                      visiblelist[index] = true;
                      str1 = imglist[index];
                      pos1 = index;
                      t = 2;
                    } else if (t == 2) {
                      print("second click");
                      visiblelist[index] = true;
                      str2 = imglist[index];
                      if (str1 == str2) {
                        print("match");
                      } else
                      {
                        print("not match");
                        Future.delayed(Duration(milliseconds: 500))
                            .then((value) {
                          setState(() {
                            visiblelist[pos1] = false;
                            visiblelist[index] = false;
                          });
                        });
                      }
                    if (!visiblelist.contains(true))
                      {
                        print("win");
                      }
                      t = 1;
                    }
                  });
                },
                child: Visibility(
                  visible: visiblelist[index],
                  child: Container(
                    margin: EdgeInsets.all(3),
                    child: Image.asset("myimage/${imglist[index]}"),
                  ),
                  replacement: Container(
                    color: Colors.grey,
                  ),
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5))

        /*Column(
        children: [
          Slider(
            onChanged: (value) {},
            value: s,
            min: 1,
            max: 6,
          ),
          Visibility(
            visible: v,
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset("myimage/caballo.png"),
            ),
            replacement: Container(
              height: 100,
              width: 100,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),*/
        );
  }

/*double s = 1;
  bool v = true;

  @override
  void initState() {
    get();
  }

  get() async {
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        s++;
      });
    }
    v = false;
  }*/
}
