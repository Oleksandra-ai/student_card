import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/student.dart';
import '../views/view_models/student_view.dart';

final studentProvider = StateNotifierProvider<StudentViewModel, List<Student>>(
      (ref) => StudentViewModel()..fetchStudents(),
);