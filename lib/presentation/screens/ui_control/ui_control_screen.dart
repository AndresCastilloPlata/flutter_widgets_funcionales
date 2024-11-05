import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const String name = 'ui_control_screen';

  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { carro, motocicleta, bicicleta, transmilenio }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTrasportation = Transportation.transmilenio;
  bool wantsBreackFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Modo Desarrollo'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        const _DiverCostum(),
        ExpansionTile(
          title: const Text('Medio de transporte'),
          subtitle: Text('$selectedTrasportation'),
          children: [
            RadioListTile(
              title: const Text('Transmilenio'),
              subtitle: const Text('Viajar en transmilenio'),
              value: Transportation.transmilenio,
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(() {
                selectedTrasportation = Transportation.transmilenio;
              }),
            ),
            RadioListTile(
              title: const Text('Bicicleta'),
              subtitle: const Text('Viajar en bicicleta'),
              value: Transportation.bicicleta,
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(() {
                selectedTrasportation = Transportation.bicicleta;
              }),
            ),
            RadioListTile(
              title: const Text('Motocicleta'),
              subtitle: const Text('Viajar en motocicleta'),
              value: Transportation.motocicleta,
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(() {
                selectedTrasportation = Transportation.motocicleta;
              }),
            ),
            RadioListTile(
              title: const Text('Carro'),
              subtitle: const Text('Viajar en carro'),
              value: Transportation.carro,
              groupValue: selectedTrasportation,
              onChanged: (value) => setState(() {
                selectedTrasportation = Transportation.carro;
              }),
            ),
          ],
        ),
        const _DiverCostum(),
        CheckboxListTile(
          title: const Text('Pan con Cafe'),
          subtitle: const Text('Desayuno'),
          value: wantsBreackFast,
          onChanged: (value) => setState(() {
            wantsBreackFast = !wantsBreackFast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Bandeja Paisa'),
          subtitle: const Text('Almuerzo'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Pizza'),
          subtitle: const Text('Cena'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}

class _DiverCostum extends StatelessWidget {
  const _DiverCostum();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(
          thickness: 1,
          height: 20,
          indent: 16,
          endIndent: 16,
        ),
      ],
    );
  }
}
