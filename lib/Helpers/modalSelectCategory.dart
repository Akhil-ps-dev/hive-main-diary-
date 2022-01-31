import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_note_hive/Bloc/Notes/notes_bloc.dart';
import 'package:main_note_hive/Widgets/ItemCategory.dart';
import 'package:main_note_hive/Widgets/TextFrave.dart';

void showDialogBottomFrave(ctx) {
  final noteBloc = BlocProvider.of<NotesBloc>(ctx);

  showBottomSheet(
    context: ctx,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0))),
    builder: (context) => Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
          boxShadow: [
            BoxShadow(color: Colors.blue, blurRadius: 10, spreadRadius: -5.0)
          ]),
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          const TextFrave(text: "I'm Feeling", fontSize: 20),
          const SizedBox(height: 5.0),
          const Divider(),
          const SizedBox(height: 20.0),
          ItemCategory(
            color: Colors.blue,
            text: 'Happy',
            onPressed: () =>
                noteBloc.add(SelectedCategoryEvent('Happy', Colors.blue)),
          ),
          ItemCategory(
            color: Colors.green,
            text: 'Sad',
            onPressed: () =>
                noteBloc.add(SelectedCategoryEvent('Sad', Colors.green)),
          ),
          ItemCategory(
            color: Colors.purple,
            text: 'Surprise',
            onPressed: () =>
                noteBloc.add(SelectedCategoryEvent('Surprise', Colors.purple)),
          ),
          ItemCategory(
            color: Colors.orange,
            text: 'Anger',
            onPressed: () =>
                noteBloc.add(SelectedCategoryEvent('Anger', Colors.orange)),
          ),
          ItemCategory(
              color: Colors.grey,
              text: 'Stress',
              onPressed: () =>
                  noteBloc.add(SelectedCategoryEvent('Stress', Colors.grey))),
        ],
      ),
    ),
  );
}
