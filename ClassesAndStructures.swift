struct Resolution{
 var width = 0
 var height = 0
}
class VideoMode{
	var result = Resolution()
	var interlaced = false
	var frameRate = 0.0
	var name:String?
}

var someResolution = Resolution()
var someVideoMode = VideoMode()
someResolution.width = 10
print(someResolution.width) //output 10
someVideoMode.result.height = 5
print(someVideoMode.result.height) // output 5
//-------------------------------------------------------------------------

//properties

struct FixedLengthRange {
	var firstValue:Int
	let length:Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue:0,length:3)
rangeOfThreeItems.firstValue = 6

//--------------------------------------------------------------------------
//Computed Properties

struct Person{
	var age:Int = 1
	var name:String = "Jamal"
	var MonthlySalary:Float 
	var YearlySalary:Float {
		get{ return MonthlySalary * 12 }
		set(NewYearlySalary) { MonthlySalary = NewYearlySalary / 12}
		//or-> set { MonthlySalary = newValue / 12 }
	}
}

var p1 = Person(age:21,name:"Jamal",MonthlySalary:2000)

var x = p1.YearlySalary  //execute (get)
print(x) //print 24000

p1.YearlySalary = 12000 //execute (set) -----> 12000 go to NewYearlySalary variable
print(p1.MonthlySalary) //print 1000

//---------------------------------------------------------------------
class StepCounter{
	var totalSteps:Int = 0 {
		willSet(newTotalSteps){
			print("About to set totalSteps to \(newTotalSteps)")
		}
		didSet{
			if totalSteps >  oldValue {
				print("Added \(totalSteps - oldValue) steps")
			}
		}
	}
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 300
stepCounter.totalSteps = 450

//-------------------------------------------------------------------
struct Point{
	var x = 0.0 , y = 0.0
}
struct Size{
	var width = 0.0, height = 0.0
}

struct Rect{
	var origin = Point()
	var size = Size()
	var center:Point{
		get{
			let centerX = origin.x + (size.width/2)
			let centerY = origin.y + (size.height/2)
			
			return Point(x:centerX, y:centerY)
		}
		set(newCenter){
			origin.x = newCenter.x - (size.width/2)
			origin.y = newCenter.y - (size.height/2)
		}
	}
}

var square = Rect(origin:Point(x:0.0, y:0.0), size:Size(width:10.0,height:10.0))
let initialSquareCenter = square.center
square.center = Point(x:15.0,y:15.0)
print("Square.origin is now at (\(square.origin.x),\(square.center.y))")


//------------------------------------------------------------------------------------------------
struct TwelveOrLess{
	private var number:Int
	init(){ self.number = 0 }
	
	var wrappedValue:Int {
		get{ return number }
		set{ number = min(newValue,12) }
	}
	public func getData()->Int{ return number }
}

@propertyWrapper
struct SmallNumber{
	private var number:Int
	var projectedValue: Bool
	init(){
		self.number = 0
		self.projectedValue = false
	}
	
	var wrappedValue:Int{
		get{ return number }
		set {
			if newValue > 12 {
				number = 12
				projectedValue = true
			} else {
				number = newValue
				projectedValue = false		
			}
		
		}
	}
}

struct SomeStructure {
	@SmallNumber var someNumber:Int 
}

var obj = SomeStructure()
obj.someNumber = 7
print(obj.$someNumber) // print false

obj.someNumber = 55
print(obj.$someNumber) // print true


//---------------------------------------------------------------------------
//Methods

class Counter {
	var count = 0
	func increment(){
		self.count += 1
	}
	func increment(by amount: Int){
		count += amount
	}
	func reset(){ count = 0 }
	
}

let counter = Counter()
counter.increment() //count = 1
counter.increment(by: 5) // count = 6
counter.reset() //count = 0
//--------------------------------------------------------------------------
//The self property

struct Point{
	var x = 0.0, y = 0.0
	func isToTheRightOf(x:Double) -> Bool{
		return self.x > x
	}
}
let somePoint = Point(x:4.0, y:5.0)
if somePoint.isToTheRightOf(x:1.0){
	print("This point is to the right of the line where x == 1.0")
}
//-----------------------------------------------------------------------------
struct Point2{
	var x = 0.0, y = 0.0
	mutating func moveBy(x deltaX:Double, y deltaY:Double){
		x += deltaX
		y += deltaY
	}
}

var somePoint2 = Point2(x:1.0, y:1.0)
somePoint2.moveBy(x:2.0, y:3.0)
print("The point is now at (\(somePoint2.x),\(somePoint2.y))")
//---------------------------------------------------------------------------

class SomeClass{
	class func someTypeMethod(){
		print("Hello world")
	}
}
SomeClass.someTypeMethod()


class Car{
	var MaxSpeed:Int = 250
	var MinSpeed:Int = 30
	var AvgSpeed:Int{
		get{ return (MaxSpeed+MinSpeed) / 2 }
	}
	
	var color:String = "White"
	var automatic: Bool = false
	
	init(MaxSpeed:Int, MinSpeed:Int, color:String){
		self.MaxSpeed = MaxSpeed
		self.MinSpeed = MinSpeed
		self.color = color
		self.automatic = false
	}
	
	func UpdateMaxSpeed(MaxSpeed:Int, MinSpeed:Int){
		self.MaxSpeed = MaxSpeed
		self.MinSpeed = MinSpeed
	}
	
	class func FirstHasMoreAvgSpeed(car1:Car, car2:Car) -> Bool
	{
		return car1.AvgSpeed > car2.AvgSpeed
	}
}

var c1 = Car(MaxSpeed:400,MinSpeed:20,color:"Balck")
var c2 = Car(MaxSpeed:300,MinSpeed:60,color:"White")
c1.UpdateMaxSpeed(MaxSpeed:500,MinSpeed:100)
print(Car.FirstHasMoreAvgSpeed(car1:c1,car2:c2))

























