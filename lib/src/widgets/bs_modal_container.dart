import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

/// Widget of Bootstrap Modal Header, Body, Footer
class BsModalContainer extends StatelessWidget {
  /// Construct [BsModalContainer]
  const BsModalContainer({
    Key? key,
    this.title,
    this.titleStyle,
    this.padding,
    this.child,
    this.actions = const [],
    this.closeButton = false,
    this.onClose,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  /// define title of [BsModalContainer]
  final Widget? title;

  /// define titleStyle of [BsModalContainer]
  final TextStyle? titleStyle;

  /// define closeButton of [BsModalContainer]
  final bool closeButton;

  /// define padding of [BsModalContainer]
  final EdgeInsets? padding;

  /// define child of [BsModalContainer]
  final Widget? child;

  /// define actions of [BsModalContainer]
  final List<Widget> actions;

  /// define onClose of [BsModalContainer]
  final VoidCallback? onClose;

  /// define crossAxisAlignment of [BsModalContainer]
  final CrossAxisAlignment crossAxisAlignment;

  /// define mainAxisAlignment of [BsModalContainer]
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Row(
            children: [
              title == null
                  ? Container()
                  : DefaultTextStyle(
                style: TextStyle(
                  fontSize: 16.0,
                  color: BsColor.color,
                  fontWeight: FontWeight.bold,
                ).merge(titleStyle),
                child: Expanded(
                    child: Container(
                        padding: padding != null
                            ? padding
                            : EdgeInsets.all(15.0),
                        child: title)),
              ),
              !closeButton
                  ? Container(width: 0)
                  : Container(
                margin: EdgeInsets.only(
                    right: padding != null ? padding!.right : 15.0),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      if (onClose != null) onClose!();
                      else Navigator.pop(context);
                    },
                    child: Icon(Icons.close, size: 14.0, color: BsColor.color),
                  ),
                ),
              )
            ],
          ),
          child == null
              ? Container()
              : Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: BsColor.borderColor))),
          ),
          child == null
              ? Container()
              : Container(
            padding: padding == null ? EdgeInsets.all(15.0) : padding,
            child: child,
          ),
          actions.length == 0
              ? Container()
              : Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: BsColor.borderColor))),
          ),
          actions.length == 0
              ? Container()
              : Container(
            padding: padding == null ? EdgeInsets.all(15.0) : padding,
            child: Row(
              crossAxisAlignment: crossAxisAlignment,
              mainAxisAlignment: mainAxisAlignment,
              children: actions,
            ),
          )
        ],
      ),
    );
  }
}