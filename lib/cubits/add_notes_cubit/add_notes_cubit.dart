import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(
        AddNotesFailure(errorMessage: e.toString()),
      );
    }
  }
}
