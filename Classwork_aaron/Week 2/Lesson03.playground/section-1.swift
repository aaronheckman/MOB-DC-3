// Intro to Swift in class playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.
var name = "Aaron"
var age = 23

// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"
println("Hello \(name), you are \(age) years old!")

// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
if age > 21 {
    println("You can drink")
}
if age > 16 {
    println("You can drive")
}
if age > 18 {
    println("You can vote")
}


// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

if age > 16 && age < 18{
    println("You can drive")
}
if age > 18 && age < 21 {
    println("You can drive and vote")
}
if age > 21 {
    println("You can vote and drink and drive")
}


// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

var test = 7
var counts = 0
var multi = 1

while counts < 50 {
    println((test*multi)-1)
    ++multi
    ++counts
}


// TODO: Create a constant called number

let num = 0

// TODO: Print whether the above number is even

if num%2 == 0 {
    println(num)
}

// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

let x = count(name)

println("Hello \(name), your name is \(count(name)) characters long")

// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

var total = 0
var total_count = 0
while total_count < 100 {
    total = total + Int(rand())
    ++total_count
}
println(total)


// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.
var fizz_count = 1
while fizz_count < 100 {
    if fizz_count%3 == 0{
        println("Fizz"
    } else if fizz_count
    
    println(fizz_count)
    fizz_count++
}



// BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below
