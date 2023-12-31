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
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y diálogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Staful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introducción a la aplicación',
      subTitle: 'Pequeño tutorial introductorio',
      link: '/tutorial',
      icon: Icons.thunderstorm_outlined),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Riverpod Counter',
      subTitle: 'Introducción a Riverpod',
      link: '/counter-river',
      icon: Icons.add),
  MenuItem(
      title: 'Theme Changer',
      subTitle: 'Cambiar tema de la aplicación',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
  MenuItem(
      title: 'Cubit Counter',
      subTitle: 'Gestor con Cubit',
      link: '/cubit',
      icon: Icons.ads_click_outlined),
  MenuItem(
      title: 'Bloc Counter',
      subTitle: 'Gestor con Bloc',
      link: '/bloc',
      icon: Icons.add_to_queue_outlined),
  MenuItem(
      title: 'Login',
      subTitle: 'Testeo de Login',
      link: '/login-screen',
      icon: Icons.login_outlined),
  MenuItem(
      title: 'Notificaciones',
      subTitle: 'Test de notificaciones',
      link: '/notifications',
      icon: Icons.settings),
];
