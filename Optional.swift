//Optional Type
/*
1- if let
2- Guard let : function
3- Force Unwarpping
4- Optional Chaining
*/
var name:String?
name = "Jamal Rshad"

if let unwName = name {
	print(unwName)
}
else{
	print("I'm Nil")
}
//----------------------------------------------------

func device (price:Int?){
	guard let unwPrice = price else
	{
		print("Exiting form the function")
		return
	}
	print("my device price is \(unwPrice)")	
}

print(device(price:500))
//-----------------------------------------------------

var StudentName :String!
StudentName = "Ali"
//print(StudentName)


struct MacBookPro {
	var price :Int?
	var color :String?
	var type :String?
}
var myDevice : MacBookPro?
myDevice = MacBookPro(price:11500,color:"gray",type:"MacBookPro Laptop")
let unwColor = myDevice?.color
let unwPrice = myDevice?.price
let unwType  = myDevice?.type

if let unwDeviceColor = unwColor, let unwDevicePrice = unwPrice, let unwDeviceType = unwType {
	print("My Device price is \(unwDevicePrice), color:\(unwDeviceColor), type: \(unwDeviceType)")
}



























