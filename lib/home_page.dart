import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _counter = 0;
  var _pressed1 = false;
  var _pressed2 = false;
  var _pressed3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjKpECCq2Zw5xK3M-RKOq4tdbhgAnGDBbs5w&usqp=CAU"),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Flexible(
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                width: (MediaQuery.of(context).size.width / 3 * 2) - 10,
                child: const Text(
                  "El ITESO, Universidad Jesuita de Guadalajara",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.thumb_up),
                      color: Colors.blueAccent,
                      onPressed: () {
                        setState(() => _counter += 1);
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.thumb_down),
                      color: Colors.blueAccent,
                      onPressed: () {
                        if (_counter != 0) {
                          setState(() => _counter -= 1);
                        }
                      },
                    ),
                    Text(_counter.toString()),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: const [
            SizedBox(
              width: 10,
            ),
            Text(
              'San Pedro Tlaquepaque,Jal.',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.mail),
                    iconSize: 40,
                    color: _pressed1 ? Colors.indigo : Colors.black87,
                    onPressed: () {
                      setState(() {
                        _pressed1 = !_pressed1;
                      });
                      const snackBar = SnackBar(
                        content: Text('Enviando correo...'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  Text('Correo'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.call),
                    iconSize: 40,
                    color: _pressed2 ? Colors.indigo : Colors.black87,
                    onPressed: () {
                      setState(() {
                        _pressed2 = !_pressed2;
                      });
                      const snackBar = SnackBar(
                        content: Text('Llamando...'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  const Text('Llamada'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.directions),
                    iconSize: 40,
                    color: _pressed3 ? Colors.indigo : Colors.black87,
                    onPressed: () {
                      setState(() {
                        _pressed3 = !_pressed3;
                      });
                      const snackBar = SnackBar(
                        content: Text('Mostrando direccion...'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  const Text('Ruta'),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Flexible(
            child: Row(
          children: const [
            SizedBox(
              width: 30,
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Text(
                    "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente), es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara. Fundada en el año de 1957 por el Padre Luis Hernández Prieto S.J.,3​ José Aguilar Figueroa y el ingeniero José Fernández del Valle y Ancira, entre otros, la universidad ha tenido una larga trayectoria. A continuación se presenta la historia de la institución en periodos de décadas."),
              ),
            ),
            SizedBox(
              width: 30,
            ),
          ],
        ))
      ]),
    );
  }
}
