import 'package:flutter/material.dart';

import '../state/inherited_chat_theme.dart';

/// A class that represents system message widget.
class SystemMessage extends StatelessWidget {
  const SystemMessage({
    super.key,
    required this.systemWidget,
  });

  /// System message.
  final Widget systemWidget;

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        margin: InheritedChatTheme.of(context).theme.systemMessageTheme.margin,
        child: systemWidget,
      );
}

@immutable
class SystemMessageTheme {
  const SystemMessageTheme({
    required this.margin,
    required this.textStyle,
  });

  /// Margin around the system message.
  final EdgeInsets margin;

  /// Text style for the system message.
  final TextStyle textStyle;
}
