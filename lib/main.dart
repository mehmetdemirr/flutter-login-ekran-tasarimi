import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Giriş Ekranı'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    final double ekranGenisligi=ekranBilgisi.size.width;
    final double ekranYuksekligi=ekranBilgisi.size.height;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
     /*
      appBar: AppBar(
        title: Center(
            child: Text(widget.title,style: TextStyle(fontSize: ekranGenisligi/27),
            )
        ),
      ),
      */
      body:SingleChildScrollView(
        child:Center(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:ekranYuksekligi/15),
                    child: Center(
                      child: SizedBox(
                          height: ekranYuksekligi/5,
                          width: ekranGenisligi/5,
                          child: Image.asset("resimler/bank.png")
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: ekranYuksekligi/15),
                    child: Center(
                      child: SizedBox(
                          height: ekranYuksekligi/4,
                          width: ekranGenisligi/2,
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: "Kullanıcı Adı",
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),

                              )
                            ),
                          )
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: SizedBox(
                        height: ekranYuksekligi/4,
                        width: ekranGenisligi/2,
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Şifre",
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              )
                          ),
                        )
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: ekranYuksekligi/15),
                    child: Center(
                      child: ElevatedButton(
                          onPressed:(){
                            print("giriş yapıldı");
                          },
                          child: Text("GİRİŞ YAP",style: TextStyle(fontSize: ekranYuksekligi/20),)
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      )
    );
  }
}
