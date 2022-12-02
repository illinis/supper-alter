import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final String titleText;
  final String subtitleText;
  final Widget? action;
  final List<Widget> children;

  const CustomExpansionTile({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    this.action,
    this.children = const [],
  }) : super(key: key);

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: _isExpanded ? 5 : 0,
      ),
      child: Material(
        color:
            _isExpanded ? Theme.of(context).colorScheme.surfaceVariant : null,
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 7,
          ),
          childrenPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    TextSpan(
                      text: "${widget.titleText}\n",
                      style: _isExpanded
                          ? TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).colorScheme.secondary,
                            )
                          : null,
                    ),
                    TextSpan(
                      text: widget.subtitleText,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.black54),
                    )
                  ],
                ),
              ),
              widget.action ?? const SizedBox.shrink()
            ],
          ),
          iconColor: Theme.of(context).colorScheme.secondary,
          onExpansionChanged: (isExpanded) {
            setState(() {
              _isExpanded = isExpanded;
            });
          },
          children: widget.children,
        ),
      ),
    );
  }
}
