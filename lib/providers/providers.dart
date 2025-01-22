import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/student.dart';
import '../view_models/student_view.dart';

/*final studentProvider = StateNotifierProvider<StudentViewModel, List<Student>>(
      (ref) => StudentViewModel()..fetchStudents(),
);*/

final studentProvider = StateNotifierProvider<StudentViewModel, List<Student>>(
      (ref) => StudentViewModel()..fetchStudents(),
);