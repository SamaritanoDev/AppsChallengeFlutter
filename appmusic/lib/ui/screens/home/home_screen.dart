import 'package:appmusic/bloc/cicrular_slider/circular_slider_cubit.dart';
import 'package:appmusic/ui/widgets/bottom_navigation_bar.dart';
import 'package:appmusic/ui/widgets/buttons_circular.dart';
import 'package:appmusic/ui/widgets/volumne_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Índice de la pantalla seleccionada
  final List<Widget> _screens = [
    const _HomeView(),
    // Otras pantallas que deseas mostrar
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Essence (feat Tems) ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: _screens[_selectedIndex], // Muestra la pantalla seleccionada
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Cambia el índice de la pantalla seleccionada
          });
        },
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
      child: Column(
        children: [
          const SizedBox(height: 130),
          BlocProvider(
            create: (context) => CircularSliderCubit(),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularSliderCustom(),
              ],
            ),
          ),
          const SizedBox(height: 42),
          const ButtonsCircular()
        ],
      ),
    );
  }
}
