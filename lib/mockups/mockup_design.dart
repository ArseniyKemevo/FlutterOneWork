import 'package:flutter/material.dart';

class MockupDesign extends StatelessWidget {
  const MockupDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F3FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.arrow_back_ios_new, size: 14, color: Color(0xFF4F58FD)),
              ),
              const SizedBox(width: 14),
              const Text('3D Design Basic', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800)),
            ],
          ),
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: AspectRatio(
              aspectRatio: 1.45,
              child: Image.asset(
                'assets/images/card.jpg',
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Image.network(
                  'https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?w=800',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              _buildBadge(icon: Icons.videocam_outlined, text: '4.569'),
              const SizedBox(width: 8),
              _buildBadge(icon: Icons.star_rounded, text: '4.9'),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF4F58FD),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Text('Best Seller', style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Text('3D Design Basic', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
          const SizedBox(height: 8),
          const Text(
            'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.',
            style: TextStyle(color: Color(0xFF555555), fontSize: 13, height: 1.4),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('24 Lessons (20 hours)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text('See all', style: TextStyle(color: Color(0xFF4F58FD), fontWeight: FontWeight.bold, fontSize: 13)),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFEEEEEE)),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 48,
                    height: 48,
                    child: Image.asset(
                      'assets/images/lesson_thumb.jpg',
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(color: const Color(0xFF7C4DFF)),
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Introduction to 3D', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      SizedBox(height: 2),
                      Text('20 mins', style: TextStyle(color: Colors.grey, fontSize: 11)),
                    ],
                  ),
                ),
                const Icon(Icons.check_circle_outline, color: Color(0xFF4F58FD), size: 22),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4F58FD),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                elevation: 0,
              ),
              child: const Text('Enroll - \$24.99', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBadge({required IconData icon, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F3FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, size: 14, color: const Color(0xFF4F58FD)),
          const SizedBox(width: 4),
          Text(text, style: const TextStyle(color: Color(0xFF4F58FD), fontWeight: FontWeight.bold, fontSize: 11)),
        ],
      ),
    );
  }
}