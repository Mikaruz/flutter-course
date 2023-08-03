import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(physics: const ClampingScrollPhysics(), children: [
      SwitchListTile(
        value: isDeveloper,
        onChanged: (value) => setState(() {
          isDeveloper = !isDeveloper;
        }),
        title: const Text('Developer Mode'),
        subtitle: const Text('Controles adicionales'),
      ),
      ExpansionTile(
        title: Text('Vehículo de transporte'),
        subtitle: Text('$selectedTransportation'),
        children: [
          RadioListTile(
              title: const Text('By car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                    selectedTransportation = Transportation.car;
                  })),
          RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar por avión'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                    selectedTransportation = Transportation.plane;
                  })),
          RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar por bote'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                    selectedTransportation = Transportation.boat;
                  })),
          RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                    selectedTransportation = Transportation.submarine;
                  })),
        ],
      ),
      CheckboxListTile(
          title: Text('¿Desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
                wantsBreakfast = !wantsBreakfast;
              })),
      CheckboxListTile(
          title: Text('¿Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
                wantsLunch = !wantsLunch;
              })),
      CheckboxListTile(
          title: Text('¿Cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
                wantsDinner = !wantsDinner;
              }))
    ]);
  }
}
