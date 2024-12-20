/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/
import "package:mycv/src/utils/exports/my_import.dart";

class ExpandableText extends StatefulWidget {
  ExpandableText(this.text, {super.key});

  final String text;
  bool isExpanded = false;

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with TickerProviderStateMixin<ExpandableText> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      //mainAxisSize: MainAxisSize.min,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 1000),
          child: ConstrainedBox(
            constraints: widget.isExpanded
                ? const BoxConstraints()
                : const BoxConstraints(maxHeight: 50.0),
            child: Text(
              widget.text,
              softWrap: true,
              style: TextStyle(color: white, fontSize: 15.0),
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        widget.isExpanded
            ? ConstrainedBox(
                constraints: const BoxConstraints(),
              )
            : TextButton(
                child: Text(
                  '...',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: white,
                      fontSize: 15.0),
                ),
                onPressed: () => setState(() => widget.isExpanded = true),
              )
      ],
    );
  }
}
