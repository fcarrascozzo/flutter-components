import 'package:flutter/material.dart';

/// Esta classe é uma extensão do AnimatedOpacity, herdando todos os seus atributos.
/// Ela tem um comportamento específico baseado na visibilidade do widget.
///
/// Comportamento:
/// - Quando visível: O widget filho (child) é exibido.
/// - Quando não visível: Um SizedBox vazio é exibido. Isso garante que nenhum espaço seja ocupado, permitindo que o espaço seja utilizado por outro widget.
///
/// Nota Importante:
/// O widget filho (child) não é substituído por outro widget. Isso ocorre porque, para que a animação ocorra,
/// o widget precisa permanecer no local, porém com opacidade 0. Portanto, se um widget secundário fosse usado, ele não seria exibido,
/// tornando desnecessário o uso do AnimatedOpacity.

class WidgetOpaco extends AnimatedOpacity {
  WidgetOpaco({
    super.key,
    required Widget child,
    required bool isVisible,
    int? milliseconds,
  }) : super(
          opacity: isVisible ? 1 : 0,
          duration: Duration(milliseconds: milliseconds ?? 600),
          child: isVisible ? child : SizedBox(),
        );
}
