import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey key = GlobalKey();
  late Offset? localOffset = const Offset(0, 0);

  void _getSize(GlobalKey key) {
    print('Image Width: ${key.currentContext!.size!.width}');
    print('Image Height: ${key.currentContext!.size!.height}');
    print(
        'Image Top Center: ${key.currentContext!.findRenderObject()!.paintBounds.topCenter.dx}');
    print('Device Pixel Ratio: ${MediaQuery.of(context).devicePixelRatio}');

    final renderObject = key.currentContext?.findRenderObject();
    var translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null) {
      print(
          'Translations: ${renderObject!.paintBounds.shift(Offset(translation.x, translation.y))}');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('${WidgetsBinding.instance!.window.devicePixelRatio}');
    print('Full Width ${MediaQuery.of(context).size.width}');
    print('Full Height ${MediaQuery.of(context).size.height}');
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned(
            key: key,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/quran.jpeg',
              key: key,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          PositionedDirectional(
            start: (194 * (411 / 600)) - 10,
            top: (265 * (617 / 900)) - 10,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'الآية رقم 1',
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                );
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          PositionedDirectional(
            start: (144 * (411 / 600)) - 10,
            top: (324 * (617 / 900)) - 10,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'الآية رقم 2',
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                );
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          PositionedDirectional(
            start: (326 * (411 / 600)) - 10,
            top: (386 * (617 / 900)) - 10,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'الآية رقم 3',
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                );
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          PositionedDirectional(
            start: (95 * (411 / 600)) - 10,
            top: (382 * (617 / 900)) - 10,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'الآية رقم 4',
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                );
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          PositionedDirectional(
            start: (180 * (411 / 600)) - 10,
            top: (442 * (617 / 900)) - 10,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'الآية رقم 5',
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                );
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          PositionedDirectional(
            start: (292 * (411 / 600)) - 10,
            top: (515 * (617 / 900)) - 10,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'الآية رقم 6',
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                );
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          PositionedDirectional(
            start: (217 * (411 / 600)) - 10,
            top: (633 * (617 / 900)) - 10,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'الآية رقم 7',
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                );
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension GlobalKeyEx on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    var translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null) {
      return renderObject!.paintBounds
          .shift(Offset(translation.x, translation.y));
    } else {
      return null;
    }
  }
}
