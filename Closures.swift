let names = ["Jamal","Bander","Ahmed","Mohmmed"]
func backward(s1:String,s2:String) -> Bool{
	return s1 > s2
}

var reversedNames = names.sorted(by:backward)
print(reversedNames)

reversedNames = names.sorted(by: {(s1:String,s2:String)->Bool in
	return s1 > s2	
})

print(reversedNames)

