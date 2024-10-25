import 'package:flutter/material.dart';
import 'package:britany/pages/carnet/carnet_page.dart';
import 'package:britany/pages/equipment/equipments_page.dart';
import 'package:britany/pages/profile/my_account_page.dart';
import 'package:britany/widgets/navigation_bar.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1; // Índice para manejar la pestaña activa

  // Lista de las páginas a mostrar en IndexedStack
  final List<Widget> _pages = [
    const Equipmentspage(), // Indice 0
    const Carnetpage(), // Indice 1
    const Myaccountpage(), // Indice 2
  ];


  // Método que se llama cuando se selecciona una pestaña en la barra de navegación
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex =
          index; // Cambia el índice actual para mostrar la página correspondiente
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStack para mantener el estado de las páginas cuando se cambia de pestaña
      body: IndexedStack(
        index: _currentIndex,
        children: _pages, // Muestra la página correspondiente al índice actual
      ),
      bottomNavigationBar: CustomNavigationBar(
        onTabTapped: _onTabTapped,
        selectedIndex: _currentIndex, //Aquí esta pasando el selectedIndex
      ),
    );
  }
}
