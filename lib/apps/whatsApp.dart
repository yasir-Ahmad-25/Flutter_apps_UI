import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  List App_users = [
    'Ahmad ⚡',
    'Jaamac',
    'ICT ENGINEERS 👨‍💻',
    'Eng Java',
    'Hamze 🚨',
    'Y A H Y A ⚡',
    'GEEDI SOCOD 🚶‍➡️',
    '+252 61 4 53 23 12',
    'Mucaawiye 😈',
    'GATEWAY (ICT) 💻',
    '+91 23 123 235 452 23',
    'Abdi 👑',
    'Somali_Dev 🖥️',
    'Techie_Fahad 🖱️',
    'Engineer_Abdi 🇸🇴',
    'Muna 🔥',
    'Farah_Boy 🦸‍♂️',
    'Rashid_Dev 💡',
    'Zaki_Official 🎥',
    'Tech_Guru 👨‍🏫',
    'Xuseen_Pro 🧑‍💻',
    'Amina 💬',
    'Ali_Tech 💼',
    'Samira_Coder 💻',
    'Abdi_Hacker 🔓',
    'Cyber_Warrior 🛡️',
    'Engineer_Ali 🚧',
  ];

  List<String> last_messages = [
    'Hey, how are you?',
    'Let\'s meet up later.',
    'New project update!',
    'Will call you in a bit.',
    'Can you help me with this issue?',
    'What\'s the plan for today?',
    'Check your email 📧',
    'I am available now.',
    'Let\'s talk tomorrow!',
    'I sent the documents 📄',
    'Are you free now?',
    'Call me when you are free.',
    'Let me know when you\'re ready.',
    'Got your message, will reply soon.',
    'Working on something important.',
    'Offline now, talk later.',
    'Done with the task! 🚀',
    'Sent you the code.',
    'How\'s everything going?',
    'Can you join the meeting?',
    'What time works for you?',
    'Let me check that for you.',
    'I am on my way.',
    'Looking forward to the weekend!',
    'Test message 🚨',
    'I\'ll catch up with you soon.',
  ];

  // Index to keep track of the selected tab
  int _selectedIndex = 0;

  // Method to handle tab changes
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.camera,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        // Use Column as the parent
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: App_users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('images/user_placeholder.jpg'),
                  ),
                  title: Text(
                    App_users[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    last_messages[index],
                    style: const TextStyle(color: Colors.white70),
                  ),
                  trailing: const Text("16:42"),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(FontAwesomeIcons.plus),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex, // Set the selected index
          onTap: _onItemTapped, // Handle tap event
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.chat,
                color: Colors.white,
              ), // Icon for Chats
              label: 'Chats', // Label for Chats
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone), // Icon for Calls
              label: 'Calls', // Label for Calls
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.circle,
                color: Colors.white,
              ), // Icon for Status
              label: 'Status', // Label for Status
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store), // Icon for Tools
              label: 'Tools', // Label for Tools
            ),
          ],
        ),
      ),
    );
  }
}
