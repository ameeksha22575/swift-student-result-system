
import Foundation

// MARK: 1. Student Details

print("===== STUDENT RESULT MANAGEMENT SYSTEM =====")

print("Enter Student Name:")
let name = readLine() ?? "Unknown"

print("Enter Roll Number:")
let rollNumber = readLine() ?? "N/A"

// Nil Coalescing Operator (??)
let middleName: String? = nil
let displayMiddleName = middleName ?? "Not Provided"

print("Middle Name: \(displayMiddleName)")

// MARK: 2. Input Marks

let subjects = ["English", "Maths", "Science", "Computer", "Hindi"]

var marks: [Int] = []
let passMark = 35

for subject in subjects {

    var validMarks = false

    while !validMarks {

        print("Enter marks for \(subject) (0-100):")

        if let input = readLine(), let mark = Int(input) {

            if mark >= 0 && mark <= 100 {

                marks.append(mark)
                validMarks = true

            } else {
                print("Invalid marks! Enter between 0 and 100.")
            }

        } else {
            print("Please enter a valid number.")
        }
    }
}

// MARK: 3. Attendance Validation

var attendance: Double = 0
var validAttendance = false

while !validAttendance {

    print("Enter Attendance Percentage (0-100):")

    if let input = readLine(), let value = Double(input) {

        if value >= 0 && value <= 100 {

            attendance = value
            validAttendance = true

        } else {
            print("Invalid attendance! Enter between 0 and 100.")
        }

    } else {
        print("Please enter a valid number.")
    }
}

// MARK: 4. Arithmetic Operators

var total = 0

for mark in marks {
    total += mark       // Compound assignment operator
}

let average = Double(total) / 5
let percentage = (Double(total) / 500) * 100

// MARK: 5. Comparison Operators

let hasFailedSubject = marks.contains { $0 < passMark }

let attendanceEligible = attendance >= 75

// MARK: 6. Logical Operators

let isPassed = !hasFailedSubject && attendanceEligible

// MARK: 7. If-Else Grade Assignment

var grade = ""

if !isPassed {
    grade = "F - Fail"
} else if average >= 90 {
    grade = "A+"
} else if average >= 80 {
    grade = "A"
} else if average >= 70 {
    grade = "B"
} else if average >= 60 {
    grade = "C"
} else if average >= 50 {
    grade = "D"
} else {
    grade = "E"
}

// MARK: 8. Switch Statement

switch grade {
case "A+":
    print("Excellent Performance!")
case "A":
    print("Very Good!")
case "B":
    print("Good!")
case "C":
    print("Average!")
case "D", "E":
    print("Needs Improvement!")
default:
    print("Student Failed.")
}

// MARK: 9. Final Result

print("\n========== STUDENT RESULT ==========")

print("Name: \(name)")
print("Roll Number: \(rollNumber)")
print("Subjects and Marks:")

for index in 0..<subjects.count {
    print("\(subjects[index]): \(marks[index])")
}

print("Total Marks: \(total)/500")
print("Average: \(average)")
print("Percentage: \(percentage)%")
print("Attendance: \(attendance)%")
print("Grade: \(grade)")
print("Result: \(isPassed ? "PASS" : "FAIL")")

print("====================================")
