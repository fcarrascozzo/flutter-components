import 'package:flutter/material.dart';

/// A classe WidgetOpaco estende AnimatedOpacity, herdando todos os seus atributos.
/// Ela permite alterar a opacidade de um widget filho com uma animação, 
/// baseada na visibilidade fornecida.
///
/// Parâmetros:
/// - [child]: O widget filho que será animado.
/// - [isVisible]: Um booleano que determina se o widget é visível (true) ou invisível (false).
/// - [milliseconds]: A duração da animação em milissegundos (opcional, padrão é 500 ms).
///
/// Comportamento:
/// - Quando [isVisible] é true: O widget filho [child] é exibido com opacidade 1.
/// - Quando [isVisible] é false: Um [SizedBox] é exibido com opacidade 0, 
///   permitindo que o espaço seja potencialmente reutilizado por outro widget, 
///   mas tecnicamente o espaço continua reservado.
///
/// Nota Importante:
/// Para que a animação ocorra corretamente, o widget animado (seja o [child] ou o [SizedBox])
/// precisa permanecer no layout, mesmo com opacidade 0.

class WidgetOpaco extends AnimatedOpacity {
  WidgetOpaco({
    super.key,
    required Widget child,
    required bool isVisible,
    int? milliseconds,
  }) : super(
          // Define a opacidade com base na visibilidade
          opacity: isVisible ? 1 : 0,
          // Define a duração da animação
          duration: Duration(milliseconds: milliseconds ?? 500),
          // Se o widget é visível, exibe o child, caso contrário exibe um SizedBox
          child: isVisible ? child : SizedBox(),
        );
}
