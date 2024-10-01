import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp ({Key?  key}) : super (key : key);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //title section
    Widget titlesection = Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    'Kandersteg, Sitzerland',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            const Icon(
              Icons.star,
              color: Color.fromARGB(255, 244, 130, 54),
            ),
            const Text('41')
          ],
        ));
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(const Color.fromARGB(255, 0, 93, 169), Icons.call, 'CALL'),
        _buildButtonColumn(const Color.fromARGB(255, 0, 93, 169), Icons.near_me, 'ROUTE'),
        _buildButtonColumn(const Color.fromARGB(255, 0, 93, 169), Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
 """
Danau adalah
bagian dari sungai yang lebar dan kedalamannya secara alami jauh melebihi ruas-ruas lain dari sungai yang bersangkutan.
Danau memiliki fungsi utama sebagai wadah penampung air dan pendukung ekosistem perairan darat.
""",
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Flutter Layout Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('M.ismatullah.s.s | 362358302099'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/lake.png',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),

            titlesection,
            buttonSection,
            textSection,
            //button section
            //text section
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.cyan),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
