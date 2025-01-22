class Student {
  final String lastName;
  final String firstName;
  final String middleName;
  final DateTime dateOfBirth;
  final String contactPhones;
  final String emailAddress;
  final String sex;
  final String instituteName;
  final String specialityName;
  final String groupName;
  final String course;
  final String semester;
  final String code;
  final String hashId;

  Student({
    required this.lastName,
    required this.firstName,
    required this.middleName,
    required this.dateOfBirth,
    required this.contactPhones,
    required this.emailAddress,
    required this.sex,
    required this.instituteName,
    required this.specialityName,
    required this.groupName,
    required this.course,
    required this.semester,
    required this.code,
    required this.hashId,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      lastName: json['last_name'],
      firstName: json['first_name'],
      middleName: json['middle_name'],
      dateOfBirth: DateTime.parse(json['date_of_birth']),
      contactPhones: json['contact_phones'],
      emailAddress: json['email_address'], // Відповідає JSON
      sex: json['sex'],
      instituteName: json['institute_name'],
      specialityName: json['speciality_name'],
      groupName: json['group_name'],
      course: json['course'],
      semester: json['semester'], // Відповідає JSON
      code: json['code'],
      hashId: json['hash_id'],
    );
  }
}