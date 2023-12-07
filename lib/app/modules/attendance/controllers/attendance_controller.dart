import 'package:get/get.dart';
import 'package:student_schools/app/modules/attendance/models/student_data.dart';

class AttendanceController extends GetxController {
  RxString valueClass = RxString("Class");
  RxString valueSection = RxString("Section");
  RxString valueGroup = RxString("Group");
  RxString valueYear = RxString("Years");

  RxList attendanceTabList = [
    'Class',
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
  ].obs;

  RxList attendanceSection = [
    'Section',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
  ].obs;
  RxList attendanceGroup = [
    'Group',
    'Computer',
    'Civil',
    'Elictrical',
    'Macanical',
    'Data Comunication',
  ].obs;

  RxList attendanceYear = [
    'Years',
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
    '2025',
  ].obs;
  RxList<StudentData> studentDataList = <StudentData>[
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
    StudentData(roll: '465517', name: 'Salim Khan'),
  ].obs;

  RxBool isAllPresent = false.obs;

  present({required int intex, required bool present}) {
    studentDataList[intex].isPresent = present;
    studentDataList.refresh();
  }

  allPresent(bool value) {
    isAllPresent.value = value;
    for (var element in studentDataList) {
      element.isPresent = value;
    }
    studentDataList.refresh();
  }
}
