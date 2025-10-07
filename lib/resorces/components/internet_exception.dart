import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utilis/color/appcolors.dart';

class InternetException extends StatelessWidget {
  const InternetException({super.key, required this.onpress});
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.wifi_off, size: 100, color: Colors.grey),
            SizedBox(height: height * 0.03),
            Text(
              'internet_exception'.tr,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.05),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Appcolors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Retry',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Appcolors.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
