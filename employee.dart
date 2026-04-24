class Employee {
  String _name;
  double _hourlyRate;

  // Constructor
  Employee(this._name, this._hourlyRate);

  // Setter with validation
  set hourlyRate(double rate) {
    if (rate < 0) {
      print("Warning: Hourly rate cannot be negative. Setting to 0.0");
      _hourlyRate = 0.0;
    } else {
      _hourlyRate = rate;
    }
  }

  // Getter for yearly salary
  double get yearlySalary {
    return 2080 * _hourlyRate;
  }
}

void main() {
  // Create object
  Employee emp = Employee("John", 20);

  // Update hourly rate (valid)
  emp.hourlyRate = 25;

  // Update hourly rate (negative test case)
  emp.hourlyRate = -5;

  // Display yearly salary
  print("Yearly Salary: ${emp.yearlySalary}");
}