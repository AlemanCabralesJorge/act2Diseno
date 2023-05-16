import 'package:flutter/material.dart';

void main() {
  runApp(const AppLiverpool());
}

class AppLiverpool extends StatelessWidget {
  const AppLiverpool({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaDeInicio(),
    );
  }
}

class PaginaDeInicio extends StatelessWidget {
  const PaginaDeInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color(0xFFD40086), // Color personalizado para el AppBar
        title: const Text('Liverpool'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFD40086),
              ),
              child: Text(
                'Liverpool',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaDeInicio()),
                ); // Acción al hacer clic en la opción del drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configuración'),
              onTap: () {
                // Acción al hacer clic en la opción del drawer
              },
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            const TabBar(
              indicatorColor: Color(0xFFD40086),
              tabs: <Widget>[
                Tab(icon: Icon(Icons.people, color: Colors.black)),
                Tab(icon: Icon(Icons.phone_android, color: Colors.black)),
                Tab(icon: Icon(Icons.settings, color: Colors.black)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'Alemán Cabrales Jorge',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: 150,
                          height: 0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 5),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            'https://raw.githubusercontent.com/AlemanCabralesJorge/liverpool_img/main/yo.jpg',
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 150,
                          height: 0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 5),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: 250,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 3),
                          ),
                          child: const Center(
                            child: Text(
                              '6 - I | Programación',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Center(
                    child: Text('Celulares'),
                  ),
                  const Center(
                    child: Text('Configuración'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
