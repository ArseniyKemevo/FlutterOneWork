import 'package:flutter/material.dart';

class MockupOrganizer extends StatefulWidget {
  const MockupOrganizer({super.key});

  @override
  State<MockupOrganizer> createState() => _MockupOrganizerState();
}

class _MockupOrganizerState extends State<MockupOrganizer> {
  int _activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Color(0xFF5669FF)),
                onPressed: () {},
              ),
              const Text('Organizer', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800)),
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F3FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.more_vert, color: Color(0xFF5669FF), size: 18),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipOval(
            child: SizedBox(
              width: 96,
              height: 96,
              child: Image.asset(
                'assets/images/albert.png',
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Image.network(
                  'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?w=400',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text('Albert Flores', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStat('2.368', 'Followers'),
              Container(width: 1, height: 28, color: const Color(0xFFE8E8E8)),
              _buildStat('346', 'Following'),
              Container(width: 1, height: 28, color: const Color(0xFFE8E8E8)),
              _buildStat('13', 'Events'),
            ],
          ),
          const Divider(color: Color(0xFFF2F2F2), height: 32, thickness: 1),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 46,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person_add_alt_1_outlined, color: Colors.white, size: 16),
                    label: const Text('Follow', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5669FF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                      elevation: 0,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: SizedBox(
                  height: 46,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.chat_bubble_outline, color: Color(0xFF5669FF), size: 16),
                    label: const Text('Messages', style: TextStyle(color: Color(0xFF5669FF), fontWeight: FontWeight.w600)),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF5669FF)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(color: Color(0xFFF2F2F2), height: 32, thickness: 1),
          Row(
            children: ['About', 'Events', 'Reviews'].asMap().entries.map((entry) {
              final isSelected = _activeTab == entry.key;
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: InkWell(
                    onTap: () => setState(() => _activeTab = entry.key),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: isSelected ? const Color(0xFF5669FF) : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xFF5669FF)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        entry.value,
                        style: TextStyle(
                          color: isSelected ? Colors.white : const Color(0xFF5669FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 18),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('About', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 8),
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Color(0xFF555555), fontSize: 13, height: 1.5),
              children: [
                TextSpan(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                ),
                TextSpan(
                  text: 'Read more...',
                  style: TextStyle(color: Color(0xFF5669FF), fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String count, String label) {
    return Column(
      children: [
        Text(count, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 11)),
      ],
    );
  }
}