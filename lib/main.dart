import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Музыкальный плеер',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
      ),
      home: const LogInScreen(title: 'Музыкальный плеер'),
    );
  }
}

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key, required this.title});
  final String title;
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top:20)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children:const [Text('Вход:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))]),

          const Padding(padding: EdgeInsets.only(top:10)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              SizedBox(
                  width: 156,
                  height: 44,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Логин',
                    ),
                  )
              ),],
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              SizedBox(
                  width: 156,
                  height: 44,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Пароль',
                    ),
                  )
              ),],
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 32,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AlbumsScreen()));
                  },
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(Colors.purple)),
                      child: const Text("Aвторизоваться", style: TextStyle(fontSize: 16))
                  )
              )
            ],
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
              },
                  child: const Text('Регистрация',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationThickness: 1))
              ),
            ],
          ),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

///------------------------Регистрация------------------------///
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Вернуться на страницу входа')),
      body: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top:20)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children:const [Text('Регистрация:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))]),

          const Padding(padding: EdgeInsets.only(top:10)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              SizedBox(
                  width: 200,
                  height: 44,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Ваше имя',
                    ),
                  )
              ),],
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              SizedBox(
                  width: 200,
                  height: 44,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Логин',
                    ),
                  )
              ),],
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              SizedBox(
                  width: 200,
                  height: 44,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Пароль',
                    ),
                  )
              ),],
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              SizedBox(
                  width: 200,
                  height: 44,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Повторение пароля',
                    ),
                  )
              ),],
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
                width: 160,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AlbumsScreen()));
                },
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.purple)),
                    child: const Text("Войти", style: TextStyle(fontSize: 16))
                ),
              )
            ],
          ),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

final List<IconData> icons = [Icons.library_music_outlined, Icons.headset];
///------------------------Альбомы------------------------///
class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({super.key});

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text('Музыкальный плеер'),
          automaticallyImplyLeading: false),
      body: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top:20)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children:const [Text('Альбомы:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))]
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          SizedBox(
            width: 250,
            height: 88,
            child: Card(
              color: Colors.purple[200],
              child: ListTile(
                leading: Icon(icons[0], size: 30.0),
                title: const Text('Альбом 1'),
                subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Album1Screen()));
                },
              ),
            ),
          ),

          SizedBox(
            width: 250,
            height: 88,
            child: Card(
              color: Colors.purple[300],
              child: ListTile(
                leading: Icon(icons[0], size: 30.0),
                title: const Text('Альбом 2'),
                subtitle: const Text('Группа 2'),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Album2Screen()));
                },
              ),
            ),
          ),

          SizedBox(
            width: 250,
            height: 88,
            child: Card(
              color: Colors.purple[400],
              child: ListTile(
                leading: Icon(icons[0], size: 30.0),
                title: const Text('Альбом 3'),
                subtitle: const Text('Группа 3'),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Album3Screen()));
                },
              ),
            ),
          ),

          SizedBox(
            width: 250,
            height: 88,
            child: Card(
              color: Colors.purple[500],
              child: ListTile(
                leading: Icon(icons[0], size: 30.0),
                title: const Text('Альбом 4'),
                subtitle: const Text('Группа 4'),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Album4Screen()));
                },
              ),
            ),
          ),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

///------------------------Альбом1------------------------///
class Album1Screen extends StatefulWidget {
  const Album1Screen({super.key});

  @override
  State<Album1Screen> createState() => _Album1ScreenState();
}

class _Album1ScreenState extends State<Album1Screen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text('Вернуться обратно к списку альбомов')),
      body: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top:20)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children:const [Text('Альбом 1:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))]
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[200],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 1'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[300],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 2'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[400],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 3'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[500],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 4'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

///------------------------Альбом2------------------------///
class Album2Screen extends StatefulWidget {
  const Album2Screen({super.key});

  @override
  State<Album2Screen> createState() => _Album2ScreenState();
}

class _Album2ScreenState extends State<Album2Screen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text('Вернуться обратно к списку альбомов')),
      body: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top:20)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children:const [Text('Альбом 2:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))]
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[200],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 1'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[300],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 2'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[400],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 3'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[500],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 4'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

///------------------------Альбом3------------------------///
class Album3Screen extends StatefulWidget {
  const Album3Screen({super.key});

  @override
  State<Album3Screen> createState() => _Album3ScreenState();
}

class _Album3ScreenState extends State<Album3Screen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text('Вернуться обратно к списку альбомов')),
      body: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top:20)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children:const [Text('Альбом 3:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))]
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[200],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 1'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[300],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 2'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[400],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 3'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[500],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 4'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

///------------------------Альбом4------------------------///
class Album4Screen extends StatefulWidget {
  const Album4Screen({super.key});

  @override
  State<Album4Screen> createState() => _Album4ScreenState();
}

class _Album4ScreenState extends State<Album4Screen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text('Вернуться обратно к списку альбомов')),
      body: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top:20)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children:const [Text('Альбом 4:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))]
          ),

          const Padding(padding: EdgeInsets.only(top:10)),
          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[200],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 1'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[300],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 2'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[400],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 3'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),

          SizedBox(
            width: 450,
            child: Card(
              color: Colors.purple[500],
              child: ListTile(
                leading: Icon(icons[1], size: 30.0),
                title: const Text('Трек 4'),
                //subtitle: const Text('Группа 1'),
                trailing: const Icon(Icons.multitrack_audio),
                onTap: () {
                  // Заглушка, где необходимо указать действие после клика
                },
              ),
            ),
          ),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}