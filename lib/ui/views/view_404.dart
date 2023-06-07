import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'No se encontró la página',
            style: TextStyle(fontSize: 20),
          ),
          CustomFlatButton(
            onPressed: () => Navigator.pushNamed(context, '/stateful'),
            text: 'Regresar',
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
