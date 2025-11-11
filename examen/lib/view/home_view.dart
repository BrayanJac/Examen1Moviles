import 'package:flutter/material.dart';
import '../controller/arbol_controller.dart';
import '../widgets/colores.dart';
import 'result_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _paltosController = TextEditingController();
  final TextEditingController _limonesController = TextEditingController();
  final TextEditingController _chirimoyosController = TextEditingController();

  final ArbolController _controller = ArbolController();

  void _calcularTotal() {
    String resultado = _controller.calcularCompra(
      _paltosController.text,
      _limonesController.text,
      _chirimoyosController.text,
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultadoView(resultado: resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Examen"),
        backgroundColor: ColoresApp.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Center(
                child: Text(
                  "Examen Parcial",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 25),

              // 🥑 Palto
              const Text(
                "Cantidad de Paltos:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextField(
                controller: _paltosController,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),

              Text(
                "Cantidad de Limones:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 5),
              TextField(
                controller: _limonesController,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),

              Text(
                "Cantidad de Chirimoyos:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextField(
                controller: _chirimoyosController,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 30),

              Center(
                child: ElevatedButton(
                  onPressed: _calcularTotal,
                  child: Text("Calcular Total"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
