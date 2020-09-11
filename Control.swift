//if-else statement
var x = 30
if x <= 30{
	print("This number less than or equal thirteen")
}

//print("Enter Your name: ",terminator: "")
var name = "Jamal"
if name  == "Jamal" {
	print("Hello, \(name)")
}
else {
	print("Your name is: \(name)")
}

let number  = 7
if number == 5{
	print("Five")
} else if number == 6{
	print("Six")
}
else { print("Another number") }



//switch statement
let char:Character = "j"
switch char {
	case "a":
		print("a")
	case "b":
		print("b")
	case "j":
		print("j")
	default:
		print("Another Character")
}

let num:Int = 2
switch num{
	case 1,2,10:
		print("one or two or ten")
	case 11...20:
		print("from eleven to twenty")
	case 21..<30:
		print("from twenty one to twenty nine")
	default:
		print("Error")

}

let somePoint = (1,3)
switch somePoint{
	case (0,0):
		print("\(somePoint) is at the origin")
	case (_,0):
		print("\(somePoint) is on the X-axis")
	case (0,_):
		print("\(somePoint) is on the Y-axis")
	case (-2...2, -2...2):
		print("\(somePoint) is inside the box")
	
	default:
		print("\(somePoint) is out side of the box")

}

var Names = ["Abc","Ahmed","Rami","Yazeed","Ali","Jamal","Samir"]
var result = ""
for name in Names{
	switch name.count{
		case 3:
			result += name
		case 4:
			result += "..."
			fallthrough
		case 5:
			result += name
		default:
			print("\(name): not good") 
	}
	
}
print(result)//=AbcAhmed...AliJamalSamir

let anotherPoint = (2,5)
switch anotherPoint{
	case(let x,0):
		print("on the x-axis with an x value of \(x)")
	case(0, let y):
		print("on the y-axis with an y value of \(y)")
	case (let x, let y):
		print("somewhere else at (\(x),\(y))")
}

let yetAnotherPoint = (1,-1)
switch yetAnotherPoint{
	case let(x,y) where x == y:
		print("(\(x),\(y)) is on the line x == y")
	case let(x,y) where x == -y:
		print("(\(x),\(y)) is on the line x == -y")
	case let(x,y):
		print("(\(x),\(y)) is just some arbitary point")
}


//break&continue
let puzzleInput:String = "great minds think alike"
var puzzleOutput:String = ""
let characterToRemove :[Character] = ["a","e","i","o","u"," "]

for character in puzzleInput {
 if characterToRemove.contains(character){
 	continue
 }
 puzzleOutput.append(character)

}
print(puzzleOutput)


let names = ["Ahmed","Jamal","Ali"]
for name in names{
	if name == "Ali"{
		break
	}
	print("\(name) ",terminator:"")
}


//Label statement
/*
label name: while condition{
	statements
}*/






































