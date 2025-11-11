import '../model/arbol_model.dart';

class ArbolController {
  String calcularCompra(String paltos, String limones, String chirimoyos) {
    if (paltos.isEmpty || limones.isEmpty || chirimoyos.isEmpty) {
      return "Todos los campos deben estar completos.";
    }

    double? cantidadPaltos = double.tryParse(paltos);
    double? cantidadLimones = double.tryParse(limones);
    double? cantidadChirimoyos = double.tryParse(chirimoyos);

    if (cantidadPaltos == null || cantidadLimones == null || cantidadChirimoyos == null) {
      return "Ingrese solo valores numericos validos.";
    }

    if (cantidadPaltos < 0 || cantidadLimones < 0 || cantidadChirimoyos < 0) {
      return "No se permiten valores negativos.";
    }

    if (cantidadPaltos == 0 && cantidadLimones == 0 && cantidadChirimoyos == 0) {
      return "Debe ingresar al menos una cantidad mayor a cero.";
    }

    ArbolModel modelo = ArbolModel(cantidadPaltos: cantidadPaltos, cantidadLimones: cantidadLimones, cantidadChirimoyos: cantidadChirimoyos,);

    Map<String, double> resultado = modelo.calcularTotal();

    String subtotal = resultado["subtotal"]!.toStringAsFixed(2);
    String descuento = resultado["descuento"]!.toStringAsFixed(2);
    String rebaja = resultado["rebajaAdicional"]!.toStringAsFixed(2);
    String iva = resultado["iva"]!.toStringAsFixed(2);
    String total = resultado["total"]!.toStringAsFixed(2);

    return 
    "Subtotal sin IVA: $subtotal, Descuentos aplicados: $descuento, Rebaja adicional: $rebaja, IVA (15%):  $iva, Total a pagar: $total";
  }
}
