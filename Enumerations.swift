enum CompassPoint{
	case north 
	case south
	case east
	case west
}

enum Planet{
	case mercury, venus, earth, mars, jupiter,
		 staurn,uranus,neptune
}


var directionToHead = CompassPoint.west 
print(directionToHead) // print west
directionToHead = .east
print(directionToHead) // print east

directionToHead = .south
switch directionToHead {
	case .north:
		print("Lots of planets have a north")
	case .south:
		print("Watch out of penguins") //printed
	case .east:
		print("Where the sun rises")
	case .west:
		print("Where the skies are blue")
}

let somePlanet = Planet.earth
switch somePlanet {
	case .earth:
		print("Mostly harmless") //printed
	default:
		print("Not a safe place for humans")
}


enum Beverage: CaseIterable{
	case coffee,tea,juice,water
}

let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverage available") // 3 items

for beverage in Beverage.allCases{
	print(beverage) // print caffee tea juice, water
}

enum Subject:Int{
	case CPP = 1,Swift,ObjectiveC,Csharp,JavaScript,C,Ruby_on_Rails
}
enum Language:String{
	case Java,PHP
}

let swiftOrder = Subject.Swift.rawValue //Order 2
let JavaOreder = Language.Java.rawValue //Order 1

let possibleSubject = Subject(rawValue:3) // assigned -> ObjectiveC

let positionToFind = 7
if let someSubject = Subject(rawValue:positionToFind){
	switch someSubject{
		case .CPP:
			print("C++ language")
		case .Swift:
			print("Swift langauge")
		case .JavaScript:
			print("JavaScript langauge")
		default:
			print("No study that's") //printed
	}

} else { print("There isn't a language at position \(positionToFind)") }

























