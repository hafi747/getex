import 'package:flutter/material.dart';
import 'package:getx_mvvm/utilis/color/appcolors.dart';

class RoundButton extends StatefulWidget {
  const RoundButton({
    super.key,
    required this.onpress,
    required this.title,
    this.loading = false,
    this.buttoncolor = Appcolors.primaryColor,
    this.textcolor = Appcolors.whiteColor,
    this.height = 60,
    this.width = 60,
  });
  final VoidCallback onpress;
  final String title;
  final bool loading;
  final Color buttoncolor;
  final Color textcolor;
  final double? height;
  final double? width;

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: widget.height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: widget.buttoncolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: MaterialButton(
              onPressed: widget.onpress,
              child:
                  widget.loading
                      ? const CircularProgressIndicator(
                        color: Appcolors.whiteColor,
                      )
                      : Text(
                        widget.title,
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          color: widget.textcolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
            ),
          ),
        ),
      ],
    );
  }
}
