import 'package:flutter/material.dart';

class ToggleListElement extends StatefulWidget {
  final String _title;
  final Function(bool) _onChanged;
  final Color? _color;
  final bool? _isToggledOn;
  final Color? _activeColor;
  final Color? _activeTrackColor;
  final Color? _inactiveColor;
  final Color? _inactiveTrackColor;
  final Color? _textColor;
  final double? _fontSize;

  const ToggleListElement({
    super.key,
    required String title,
    required Function(bool) onChanged,
    Color? color,
    bool? isToggledOn,
    Color? activeColor,
    Color? activeTrackColor,
    Color? inactiveColor,
    Color? inactiveTrackColor,
    Color? textColor,
    double? fontSize,
  })  : _onChanged = onChanged,
        _color = color,
        _isToggledOn = isToggledOn,
        _title = title,
        _activeColor = activeColor,
        _activeTrackColor = activeTrackColor,
        _inactiveColor = inactiveColor,
        _inactiveTrackColor = inactiveTrackColor,
        _textColor = textColor,
        _fontSize = fontSize;

  @override
  State<ToggleListElement> createState() => _ToggleListElementState();
}

class _ToggleListElementState extends State<ToggleListElement> {
  bool? _isToggledOn;

  @override
  void initState() {
    _isToggledOn = widget._isToggledOn;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration: ShapeDecoration(
          shape: const StadiumBorder(),
          color: widget._color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                widget._title,
                style: TextStyle(
                  color: widget._textColor,
                  fontSize: widget._fontSize,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 6),
              child: Switch.adaptive(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: _isToggledOn ?? false,
                activeColor: widget._activeColor,
                activeTrackColor: widget._activeTrackColor,
                inactiveThumbColor: widget._inactiveColor,
                inactiveTrackColor: widget._inactiveTrackColor,
                onChanged: (isToggledOn) {
                  setState(() {
                    _isToggledOn = isToggledOn;
                  });
                  widget._onChanged.call(isToggledOn);
                },
              ),
            ),
          ],
        ),
      );
}
