import 'package:flutter/material.dart';

class MockupMeditate extends StatelessWidget {
  const MockupMeditate({super.key});

  @override
  Widget build(BuildContext context) {
    final filters = ['All', 'Bible In a Year', 'Dailies', 'Minutes', 'November'];

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Meditate', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
              IconButton(icon: const Icon(Icons.search, size: 24), onPressed: () {}),
            ],
          ),
          const Divider(color: Color(0xFFF2F2F2), height: 16, thickness: 1),
          const SizedBox(height: 6),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: filters.asMap().entries.map((e) {
                final isFirst = e.key == 0;
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                  decoration: BoxDecoration(
                    color: isFirst ? const Color(0xFF389799) : const Color(0xFFE2F4F3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    e.value,
                    style: TextStyle(
                      color: isFirst ? Colors.white : const Color(0xFF389799),
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 18),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: const Color(0xFFEEEEEE)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(22)),
                  child: AspectRatio(
                    aspectRatio: 1.95,
                    child: Image.asset(
                      'assets/images/meditate_moon.png',
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Image.network(
                        'https://images.unsplash.com/photo-1532767153582-b1a0e5145009?w=700',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('A Song of Moon', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
                      const SizedBox(height: 2),
                      const Text('Start with the basics', style: TextStyle(color: Colors.grey, fontSize: 12)),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Row(
                            children: [
                              Icon(Icons.favorite_border, size: 14, color: Colors.black87),
                              SizedBox(width: 4),
                              Text('9 Sessions', style: TextStyle(fontSize: 11, color: Colors.black87)),
                            ],
                          ),
                          Text('Start >', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 14,
            mainAxisSpacing: 16,
            childAspectRatio: 0.88,
            children: const [
              _PhotoGridCard(
                imagePath: 'assets/images/card_sleep.png',
                title: 'The Sleep Hour',
                author: 'Ashna Mukherjee',
                sessions: '3 Sessions',
              ),
              _PhotoGridCard(
                imagePath: 'assets/images/card_easy.png',
                title: 'Easy on the Mission',
                author: 'Peter Mach',
                sessions: '5 minutes',
              ),
              _PhotoGridCard(
                imagePath: 'assets/images/card_relax.png',
                title: 'Relax with Me',
                author: 'Amanda James',
                sessions: '3 Sessions',
              ),
              _PhotoGridCard(
                imagePath: 'assets/images/card_sun.png',
                title: 'Sun and Energy',
                author: 'Micheal Hiu',
                sessions: '5 minutes',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PhotoGridCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final String sessions;

  const _PhotoGridCard({
    required this.imagePath,
    required this.title,
    required this.author,
    required this.sessions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  color: const Color(0xFFF0F0F0),
                  child: const Icon(Icons.image_outlined, color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
        Text(
          author,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey, fontSize: 11),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.favorite_border, size: 12, color: Colors.black87),
                const SizedBox(width: 3),
                Text(sessions, style: const TextStyle(fontSize: 10)),
              ],
            ),
            const Text('Start >', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}