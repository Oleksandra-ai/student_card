import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/providers.dart';
import '../theme/style.dart';

class StudentCard extends ConsumerWidget {
  const StudentCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(studentProvider);
    final theme = Theme.of(context);

    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        final student = students[index];
        const Divider(

        );
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${student.lastName} ${student.firstName} ${student.middleName}",
                  style: theme.textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text("Email: ${student.emailAddress}", style: theme.textTheme.bodyMedium),
                Text("Phone: ${student.contactPhones}", style: theme.textTheme.bodyMedium),
                Text("Date of birth: ${student.dateOfBirth}", style: theme.textTheme.bodyMedium),
                Text("Institute Name: ${student.instituteName}", style: theme.textTheme.bodyMedium),
                Text("Speciality Name: ${student.specialityName}", style: theme.textTheme.bodyMedium),
                Text("Group Name: ${student.groupName}", style: theme.textTheme.bodyMedium),
                Text("Course: ${student.course}", style: theme.textTheme.bodyMedium),
                Text("Semester: ${student.semester}", style: theme.textTheme.bodyMedium),
              ],
            ),
          ),
        );
      },
    );
  }
}


/*
class StudentCard extends ConsumerWidget {
  const StudentCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(studentProvider);
    final theme = Theme.of(context);

    return ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];

          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
            child: Container(
              width: double.infinity,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 7,
                    color: Color(0x2F1D2429),
                    offset: Offset(
                      0.0,
                      3,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${student.lastName} ${student.firstName} ${student.middleName}",
                      textAlign: TextAlign.start,
                      style: AppStyle.textStyle.copyWith(
                        color: const Color(0xFF14181B),
                        fontSize: 16,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Divider(
                      height: 16,
                      thickness: 2,
                      color: Color(0xFFF1F4F8),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Email: ",
                            style: AppStyle.textStyle,
                          ),
                          Text(
                            student.emailAddress,
                            textAlign: TextAlign.justify,
                            style: AppStyle.textStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Institute Name: ",
                            style: AppStyle.textStyle,
                          ),
                          Text(
                            student.instituteName,
                            textAlign: TextAlign.justify,
                            style: AppStyle.textStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                      child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Speciality Name: ",
                              style: AppStyle.textStyle,
                            ),
                            Text(
                              student.specialityName,
                              textAlign: TextAlign.justify,
                              style: AppStyle.textStyle,
                            ),
                          ]
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Group Name: ",
                            style: AppStyle.textStyle,
                          ),
                          Text(
                            student.groupName,
                            textAlign: TextAlign.justify,
                            style: AppStyle.textStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Course: ",
                            style: AppStyle.textStyle,
                          ),
                          Text(
                            student.course,
                            textAlign: TextAlign.start,
                            style: AppStyle.textStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Semester: ",
                            style: AppStyle.textStyle,
                          ),
                          Text(
                            student.semester,
                            textAlign: TextAlign.justify,
                            style: AppStyle.textStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Phone: ",
                            style: AppStyle.textStyle,
                          ),
                          Text(
                            student.contactPhones,
                            textAlign: TextAlign.justify,
                            style: AppStyle.textStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date of birth: ",
                            style: AppStyle.textStyle,
                          ),
                          Text(
                            "${student.dateOfBirth}",
                            textAlign: TextAlign.justify,
                            style: AppStyle.textStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}*/
