import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_app/theme/style.dart';
// import 'package:ticket_app/view_models/student_view.dart';
import '../providers/providers.dart';

class StudentCard extends ConsumerWidget {
  const StudentCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final studentViewModel = ref.watch(studentProvider.notifier);
    final students = ref.watch(studentProvider);

    if (students.isEmpty) {
      return Center(
        child: Text(
          "Список студентів порожній",
          style: theme.textTheme.bodyMedium,
        ),
      );
    }

    final currentStudent = studentViewModel.getCurrentStudent;

    return Align(
      alignment: Alignment.topCenter,
      child:

        Container(
          margin: const EdgeInsets.only(top: 20.0),
          height: 280,
          child: SizedBox(
            width: 600,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${currentStudent.lastName} ${currentStudent.firstName} ${currentStudent.middleName}",
                      style: AppStyle.headlineStyle1,
                    ),
                    Divider(
                      thickness: 1.5,
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text("Емейл:", style: AppStyle.textStyle, ),
                        Expanded(child: Container()),
                        Text(currentStudent.emailAddress, style: AppStyle.textStyle,),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Телефон: ", style: AppStyle.textStyle,),
                        Expanded(child: Container()),
                        Text(currentStudent.contactPhones, style: AppStyle.textStyle,)
                      ],
                    ),

                    Row(
                      children: [
                        Text("Дата народження: ", style: AppStyle.textStyle,),
                        Expanded(child: Container()),
                        Text("${currentStudent.dateOfBirth.toLocal()}", style: AppStyle.textStyle,)
                      ],
                    ),
                    Row(
                      children: [
                        Text("Інститут: ", style: AppStyle.textStyle,),
                        Expanded(child: Container()),
                        Text(currentStudent.instituteName, style: AppStyle.textStyle,)
                      ],
                    ),
                    Row(
                      children: [
                        Text("Спеціальність: ", style: AppStyle.textStyle,),
                        Expanded(child: Container()),
                        Text(currentStudent.specialityName, style: AppStyle.textStyle,)
                      ],
                    ),

                    Row(
                      children: [
                        Text("Група: ", style: AppStyle.textStyle,),
                        Expanded(child: Container()),
                        Text(currentStudent.groupName, style: AppStyle.textStyle,)
                      ],
                    ),
                    Row(
                      children: [
                        Text("Курс: ",style: AppStyle.textStyle,),
                        Expanded(child: Container()),
                        Text(currentStudent.course, style: AppStyle.textStyle,)
                      ],
                    ),
                    Row(
                      children: [
                        Text("Семестр: ",style: AppStyle.textStyle, ),
                        Expanded(child: Container()),
                        Text(currentStudent.semester, style: AppStyle.textStyle,)
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}

