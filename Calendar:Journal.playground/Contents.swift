import UIKit


let sasha = (age: 25, name: "Саша")
print ("Меня зовут \(sasha.name) и мне \(sasha.age).")

let jack = (23, "Джек")
print ("Меня зовут \(jack.1) и мне \(jack.0).")

print("    ")
let daysCOunt = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let namesOfMonths = ["January","February","March","April","May","June","July","August","September","October","November","December"]

for i in 0..<namesOfMonths.count {
    print("\(namesOfMonths[i]) has \(daysCOunt[i]) days.")
}
print("    ")
var yearArray: [(name: String, days: Int)] = []

for i in 0..<namesOfMonths.count{
    yearArray.append ((name: namesOfMonths[i],days: daysCOunt[i]))
}

for i in 0..<yearArray.count {
    print("\(namesOfMonths[i]) has \(daysCOunt[i]) days!")
}
print("    ")

for i in (0...11).reversed() {
    print("\(namesOfMonths[i]) has \(daysCOunt[i]) days!")
}
print("    ")

var month = 8
var day = 28
var sum = 0


for i in 1..<namesOfMonths.count{
    if month > i {
        sum += daysCOunt[i - 1]
    }
}

sum += day - 1
print("Количество дней: \(sum)")
print("    ")



var journal: [String: Int] = [
    "Tony Stark": 10,
    "Gwen Stasy": 12,
 "Petter Parker": 9]

journal.updateValue(12, forKey: "Petter Parker")
journal

journal["Tony Stark"] = nil
journal

journal["Natasha Romanoff"] = 5
journal

for marks in journal.values {
    if marks>7 {
    print("Good Job!")
    }else if marks<7 {
        print("Study More!")
    }
}

var values = Array(journal.values)
var sum2 = 0

for sumMarks in values {
    sum2 += sumMarks
}

var allSummary = sum2 / values.count
