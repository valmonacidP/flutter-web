import 'package:bases_web/services/navigator_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:bases_web/locator.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    print('AppBar Creado');

    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 520)
            ? _TableDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Row(children: [
        CustomFlatButton(
          onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
          text: 'Contador Stateful',
          color: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        CustomFlatButton(
          onPressed: () => locator<NavigationService>().navigateTo('/provider'),
          text: 'Contador Provider',
          color: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        CustomFlatButton(
          onPressed: () =>
              locator<NavigationService>().navigateTo('/abc123456'),
          text: 'Otra pagina',
          color: Colors.black,
        ),
      ]),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Column(children: [
        CustomFlatButton(
          onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
          text: 'Contador Stateful',
          color: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        CustomFlatButton(
          onPressed: () => locator<NavigationService>().navigateTo('/provider'),
          text: 'Contador Provider',
          color: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        CustomFlatButton(
          onPressed: () =>
              locator<NavigationService>().navigateTo('/abc123456'),
          text: 'Otra pagina',
          color: Colors.black,
        ),
      ]),
    );
  }
}
