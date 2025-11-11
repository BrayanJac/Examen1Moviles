class ArbolModel {
  double cantidadPaltos;
  double cantidadLimones;
  double cantidadChirimoyos;

  final double precioPalto = 1.2;
  final double precioLimon = 1;
  final double precioChirimoyo = 0.98;

  final double iva = 0.15;

  ArbolModel({required this.cantidadPaltos, required this.cantidadLimones, required this.cantidadChirimoyos});

  double calcularSubtotal() {
    return (cantidadPaltos * precioPalto) + (cantidadLimones * precioLimon) + (cantidadChirimoyos * precioChirimoyo);
  }

  double calcularDescuentoPorTipo() {
    double descuentoPaltos = 0.0;
    double descuentoLimones = 0.0;
    double descuentoChirimoyos = 0.0;

    if (cantidadPaltos > 300) {
      descuentoPaltos = precioPalto * cantidadPaltos * 0.18;
    } else if (cantidadPaltos > 100) {
      descuentoPaltos = precioPalto * cantidadPaltos * 0.10;
    }

    if (cantidadLimones > 300) {
      descuentoLimones = precioLimon * cantidadLimones * 0.20;
    } else if (cantidadLimones > 100) {
      descuentoLimones = precioLimon * cantidadLimones * 0.125;
    }

    if (cantidadChirimoyos > 300) {
      descuentoChirimoyos = precioChirimoyo * cantidadChirimoyos * 0.19;
    } else if (cantidadChirimoyos > 100) {
      descuentoChirimoyos = precioChirimoyo * cantidadChirimoyos * 0.145;
    }

    return descuentoPaltos + descuentoLimones + descuentoChirimoyos;
  }

  double calcularRebajaAdicional(double subtotalConDescuento) {
    double totalArboles = cantidadPaltos + cantidadLimones + cantidadChirimoyos;
    if (totalArboles > 1000) {
      return subtotalConDescuento * 0.15;
    }
    return 0.0;
  }

  Map<String, double> calcularTotal() {
    double subtotal = calcularSubtotal();
    double descuento = calcularDescuentoPorTipo();
    double subtotalConDescuento = subtotal - descuento;
    double rebajaAdicional = calcularRebajaAdicional(subtotalConDescuento);
    double subtotalFinal = subtotalConDescuento - rebajaAdicional;
    double valorIva = subtotalFinal * iva;
    double totalFinal = subtotalFinal + valorIva;

    return {
      "subtotal": subtotal,
      "descuento": descuento,
      "rebajaAdicional": rebajaAdicional,
      "iva": valorIva,
      "total": totalFinal,
    };
  }
}
