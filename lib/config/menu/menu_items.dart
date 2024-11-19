import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Estilos de botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Estilo de contenedor estilizado en flutter',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars & Dialogos',
    subTitle: 'Mensaje indicador en pantalla',
    link: '/snackbars',
    icon: Icons.message_outlined,
  ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Animacion con Stateful Widget',
    link: '/animated',
    icon: Icons.animation_outlined,
  ),
  MenuItem(
    title: 'UI Controls & Tiles',
    subTitle: 'Tipos de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.checklist_rtl_outlined,
  ),
  MenuItem(
    title: 'Tutorial',
    subTitle: 'Ejemplo tutorial introductorio de aplicacion',
    link: '/tutorial',
    icon: Icons.accessibility_new_rounded,
  ),
  MenuItem(
    title: 'Infinite Scroll & Pull',
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_outlined,
  ),
  MenuItem(
    title: 'Counter Riverpod',
    subTitle: 'Aplicacion con gestor de estado Riverpod',
    link: '/counter',
    icon: Icons.numbers_sharp,
  ),
  MenuItem(
    title: 'Change Theme',
    subTitle: 'Cambiar color del tema de la aplicacion',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),
];
