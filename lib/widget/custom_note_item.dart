import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled8/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
        decoration: BoxDecoration(
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  'Build your ahmed abdelhaliem career',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  ' May21, 2021',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.6), fontSize: 14),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
