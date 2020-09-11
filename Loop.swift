let names = ["Bander","Mohmmed","Jamal","Ahmed"]
for name in names{
	print("Hello, \(name)!")
}


let numberOfLegs = ["spider":8, "ant":6, "cat":4]
for (animalName,legCount) in numberOfLegs{
	print("\(animalName)s have \(legCount) legs")
}


for index in 1...5 {
	print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
	answer *= base
}
print("\(base) to the power of \(power) is \(answer)")



let minute = 60
for i in 0..<minute {
	print(i); // print 0 to 59
}


/*for i = 0;i < 5;i++{//Statement has been removed in swift 3 :(
	print(i)
}*/
let minutes = 60
let x = 5
for i in stride(from: 0, to:minutes, by:x){
	print(i) // print 0 5 10 15 20 25 ...... 55
}


var i = 1
var sum = 0
let a = 5
while i <= a {  
	sum += i
	i += 1
}
print("sum = \(sum)")


var count = 1
var fact = 1
let number = 5
repeat{
	fact *= count
	count += 1
} while count <= number
print("fact = \(fact)")
