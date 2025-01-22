import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/student.dart';

class StudentViewModel extends StateNotifier<List<Student>> {
  StudentViewModel() : super([]);

  void fetchStudents() {
    // Імітація отримання даних із сервера
    state = [
      Student.fromJson({
        "last_name": "Коваленко",
        "first_name": "Марія",
        "middle_name": "Петрівна",
        "date_of_birth": "1998-08-22T21:00:00.000Z",
        "contact_phones": "+380671234567",
        "email_address": "kovalenko.maria@gmail.com",
        "sex": "0",
        "institute_name": "Київський національний університет культури",
        "speciality_name": "Дизайн інтер’єру",
        "group_name": "ДЗН-2-19-ІН(4.0д)",
        "course": "2",
        "semester": "4",
        "code": "654",
        "hash_id": "def456uvw1237890mnopqrstuvabcxyz"
      }),
      Student.fromJson({
        "last_name": "Шевченко",
        "first_name": "Олександр",
        "middle_name": "Іванович",
        "date_of_birth": "1995-03-15T21:00:00.000Z",
        "contact_phones": "+380931234567",
        "email_address": "shevchenko.alex@gmail.com",
        "sex": "1",
        "institute_name": "Національний університет кібербезпеки",
        "speciality_name": "Інформаційна безпека",
        "group_name": "КІБ-5-23-ІБ(3.0д)",
        "course": "3",
        "semester": "6",
        "code": "987",
        "hash_id": "abc123xyz4567890defghijklmnopqrstuv"
      }),
    ];
  }
}