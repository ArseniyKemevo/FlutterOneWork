import 'package:flutter/material.dart';

class MockupRelax extends StatelessWidget {
  const MockupRelax({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: AspectRatio(
              aspectRatio: 1.35,
              child: Image.asset(
                'assets/images/relax_pier.png',
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Image.network(
                  'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=800',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'Peter Mach',
            style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 13, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4),
          const Text(
            'Mind Deep Relax',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text(
            'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.',
            style: TextStyle(color: Color(0xFF555555), fontSize: 13.5, height: 1.45),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow_outlined, color: Colors.white, size: 24),
              label: const Text(
                'Play Next Session',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF459E9E),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                elevation: 0,
              ),
            ),
          ),
          const SizedBox(height: 24),
          _buildTrackRow(
            color: const Color(0xFF4379E6),
            title: 'Sweet Memories',
            subtitle: 'December 29 Pre-Launch',
          ),
          const Divider(color: Color(0xFFF0F0F0), height: 24, thickness: 1),
          _buildTrackRow(
            color: const Color(0xFF389799),
            title: 'A Day Dream',
            subtitle: 'December 29 Pre-Launch',
          ),
          const Divider(color: Color(0xFFF0F0F0), height: 24, thickness: 1),
          _buildTrackRow(
            color: const Color(0xFFE28D44),
            title: 'Mind Explore',
            subtitle: 'December 29 Pre-Launch',
          ),
        ],
      ),
    );
  }

  Widget _buildTrackRow({required Color color, required String title, required String subtitle}) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(13)),
          child: const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 24),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              const SizedBox(height: 2),
              Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 11)),
            ],
          ),
        ),
        const Icon(Icons.more_horiz, color: Color(0xFFC0C0C0)),
      ],
    );
  }
}