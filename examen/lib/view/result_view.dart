import 'package:flutter/material.dart';
import '../widgets/colores.dart';

class ResultadoView extends StatelessWidget {
  final String resultado;

  const ResultadoView({Key? key, required this.resultado}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
        backgroundColor: ColoresApp.primary,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        color: ColoresApp.background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Detalles",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: ColoresApp.primary,
              ),
            ),
           SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                resultado,
                style: TextStyle(
                  fontSize: 16,
                  color: ColoresApp.text,
                ),
              ),
            ),
           SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
