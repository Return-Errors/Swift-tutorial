func greet(person:String)-> String{
	let greeting = "Hello, "+person+"!"
	return greeting
}


func greetAgain(person:String)-> String{
	return "Hello again, " + person + "!"

}

func greet(person:String, alreadyGreeted:Bool) -> String{
	if alreadyGreeted {
		 return (greetAgain(person:person))
	}
	else
	{
		 return (greet(person:person))
	}
}

print(greet(person:"Jamal",alreadyGreeted:true))
//print (Hello, Jamal!) where alreadyGreeted = flase
//print (Hello again, Jamal!) where alreadyGreeted = true

