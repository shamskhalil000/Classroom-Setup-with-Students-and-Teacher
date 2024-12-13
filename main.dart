// Define the Teacher class
class Teacher {
  String name;
  String subject;

  Teacher(this.name, this.subject);

  void introduce() {
    print('Teacher Name: $name');
    print('Subject: $subject');
  }
}

// Define the Student class
class Student {
  String name;
  int gradeLevel;

  Student(this.name, this.gradeLevel);

  void introduce() {
    print('Student Name: $name');
    print('Grade Level: $gradeLevel');
  }
}

// Define the Classroom class
class Classroom {
  String className;
  Teacher teacher;
  List<Student> students = [];

  Classroom(this.className, this.teacher);

  void addStudent(Student student) {
    students.add(student);
    print('Student "${student.name}" added to $className.');
  }

  void removeStudent(String name) {
    students.removeWhere((student) => student.name == name);
    print('Student "$name" removed from $className.');
  }

  void printClassInfo() {
    print('Class Name: $className');
    teacher.introduce();
    print('Students:');
    if (students.isEmpty) {
      print('  No students in the class.');
    } else {
      for (var student in students) {
        print('  - ${student.name}, Grade ${student.gradeLevel}');
      }
    }
  }
}

void main() {
  // Create a Teacher object
  Teacher mrSmith = Teacher('Mr. Smith', 'Mathematics');

  // Create some Student objects
  Student alice = Student('Alice', 10);
  Student bob = Student('Bob', 10);
  Student charlie = Student('Charlie', 11);

  // Create a Classroom object
  Classroom mathClass = Classroom('Algebra 101', mrSmith);

  // Add students to the classroom
  mathClass.addStudent(alice);
  mathClass.addStudent(bob);
  mathClass.addStudent(charlie);

  // Print classroom information
  print('\n--- Classroom Information ---');
  mathClass.printClassInfo();

  // Remove a student
  mathClass.removeStudent('Bob');

  // Print updated classroom information
  print('\n--- Updated Classroom Information ---');
  mathClass.printClassInfo();
}
