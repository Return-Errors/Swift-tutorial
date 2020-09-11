/*extension SomeType{
	//new functionality to add to SomeType goes here 
}
extension SomeType:SomeProtocol,AnotherProtocol{
	//implementaion of protocol requirements gose here
}*/

/*extension Double{
	var km: Double { return self * 1_000.0 }
	var m : Double { return self }
	var cm: Double { return self / 100.0 }
	var mm: Double { return self / 1_000.0 }
	var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm // oneInch = 0.0254
print("One inch is \(oneInch) meters")

let threeFeet = 3.ft // threeFeet = 0.914399970739201
print("Three feet is \(threeFeet) meters")

let aMarathon = 42.km + 195.m
print(aMarathon) //print 42195.0


//-------------------------------------------------------------------------
extension Int{
	func repetitions(task: () -> Void){
		for _ in 0 ..< self{
			task()
		}
	}
}

5.repetitions{
	print("Hello Jamal") // print this statement five times
}
//------------------------------------------------------------------------
extension Int{
	mutating func square(){
		self *= self
	}
}
var someInt = 3
someInt.square()
print(someInt) //someInt is now 9
//------------------------------------------------------------------------

extension Int{
	enum Kind{
		case negative ,zero, positive
	}
	
	var kind: Kind{
		switch self{
			case 0: return .zero //get from Kind enumeraions
			case let x where x > 0:
				return .positive
			default:
				return .negative
		}
	}
}

func printIntegerKinds(_ numbers:[Int]){
	for number in numbers{ //numbers is an array [3,19,-27,0,-6,0,7]
		switch number.kind {
		case .negative: //get from Kind enumeraions
			print("- ", terminator:"")
		case .zero: 
			print("0 ", terminator:"")
		case .positive:
			print("+ ", terminator:"")
		}
	}
}
printIntegerKinds([3,19,-27,0,-6,0,7]) // print + + - 0 - 0 +
*/

extension Int{
	mutating func square(){
		self *= self //someInt = someInt * someInt
	}
}
var someInt = 3
someInt.square()
print(someInt) //someInt is now 9
























