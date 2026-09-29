import 'package:flutter/material.dart';

class PhoneScreenFrame extends StatelessWidget {
  final Widget child;

  const PhoneScreenFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        constraints: const BoxConstraints(maxWidth: 400),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Верхний статус-бар (9:41, Wi-Fi, батарея)
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 14, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '9:41',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.signal_cellular_alt_rounded, size: 16, color: Colors.black87),
                      SizedBox(width: 5),
                      Icon(Icons.wifi_rounded, size: 16, color: Colors.black87),
                      SizedBox(width: 5),
                      Icon(Icons.battery_full_rounded, size: 18, color: Colors.black87),
                    ],
                  ),
                ],
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}