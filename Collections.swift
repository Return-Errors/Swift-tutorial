//*Collections
//1-Array
var someInts = [Int]() //declare array of integer
print("someInts is of type [Int] with \(someInts.count) items") // count = 0
someInts.append(3)
print("someInts is of type [Int] with \(someInts.count) items") // count = 1

for item in someInts{
	print(item) // print 3
}

someInts = [] //someInts is now empty
print("someInts is of type [Int] with \(someInts.count) items") // count = 0


var threeDoubles = Array(repeating : 0.0,count:3)
for item in threeDoubles{
	print(item,terminator:" ") // print 0.0 0.0 0.0
}

var anotherThreeDoubles = Array(repeating: 2.5,count:3)
for item in anotherThreeDoubles{
	print(item,terminator:" ") // print 2.5 2.5 2.5
}

var sixDoubles = threeDoubles + anotherThreeDoubles

for items in sixDoubles{
	print(items,terminator:" ") //print 0.0 0.0 0.0 2.5 2.5 2.5
}


//Array with an Array Literal
var shoppingList :[String] = ["Eggs","Milk"]
print("The Shopping List contains \(shoppingList.count) items")
//The Shopping List contains 2 items

if shoppingList.isEmpty{
	print("The shopping list is empty")
}
else{
	print("The shopping list is not empty") //printed
}

shoppingList.append("Flour")

for items in shoppingList{
	print(items,terminator:" ") //print Eggs Milk Flour
}

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread","Chesse","Butter"]

print("The Shopping List contains \(shoppingList.count) items") // 7 items

for items in shoppingList{
	print(items,terminator:" ")
//print-> Eggs Milk Flour Baking Powder Chocolate Spread Chesse Butter
}

//Another Method to print
let count = shoppingList.count
var i = 0
while i < count{
	print(shoppingList[i])
	i += 1
//print-> Eggs Milk Flour Baking Powder Chocolate Spread Chesse Butter
}

var firstItem = shoppingList[0]
print(firstItem) //print Eggs

shoppingList[0] = "five Eggs"
print(shoppingList[0]) //print five Eggs


shoppingList[4...6] = ["Bananas","Apples"]
for item in shoppingList{
	print(item)
//Replace -> five Eggs Milk Flour Baking Powder Bananas Apples
//Remove Butter
}

shoppingList.insert("Maple syrup", at:0) //Replace five Eggs -> Maple syrup
let mapleSyrup = shoppingList.remove(at:0)  
//Remove location 0 and assigned value to (mapleSyrup) 

let apples = shoppingList.removeLast()
//Remove last loscation in array shoppingList
print(apples) // print apples


for(index,value) in shoppingList.enumerated(){
	print("Item \(index + 1): \(value)")
//enumerated -> to get index the array
}
//-------------------------------------------------------------------------------


//2-Set
var letters = Set<Character>()
print("Letters is of type Set<Character> with \(letters.count) items")
letters.insert("a") //letters now contains 1 value of type Character

letters = [] // letters is now an empty Set

var favoriteGenres: Set<String> = ["Rock","Classical","Hiphop"]

//Empty Dictionary
var namesOfInteger = [Int:String]()
namesOfInteger[16] = "Sixteen"
namesOfInteger = [:] // is once again an empty dictionary

var airports:[String:String] = ["YYZ":"Toronto pearson", "DUB":"Dublin"]
print("The airPorts dictionary contains \(airports.count) items") //2 items

if airports.isEmpty{
	print("The airpots dictionary is empty")
}else { print("The airpots dictionary is not empty") }

airports["LHR"] = "London" //Containts 3 items
airports["LHR"] = "London Heathrow" //location (LHR) has been changed

if let oldValue = airports.updateValue("Dublin Airport", forKey:"DUB"){
	print("The old value for DUB was \(oldValue)")
}

for values in airports{
	print(values)
}

for(airportCode, airportName) in airports{
	print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys{
	print(airportCode) //print KEYs only
}

for airportName in airports.values{
	print(airportName) //print VALUEs only
}

























