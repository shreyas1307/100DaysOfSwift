import UIKit

var str = "Hello, playground"


// Day 13

// Variables
// Using var keyword
var name = "Tim McGraw"
// can be changed
name = "Romeo"


// let keyword used is a constant
// let name = "Time McGraw"
// name = "Shreyas" // Error.

// Types of Data (Cannot mutate the types of the variable once assigned)
// String, Int, Double, Bool, Float

var string: String = "Shreyas"
var age: Int = 24
var height: Float = 168.5
var piValue: Double = 3.14 // recommended due to accuracy. Swift will always infer a double rather than a float
var isAdult: Bool = true //or false

// Operators

var operatorVariable = 10
operatorVariable = operatorVariable + 1
operatorVariable = operatorVariable * 1
operatorVariable = operatorVariable - 1
operatorVariable = operatorVariable / 1

// Shorthands
operatorVariable += 1
operatorVariable *= 1
operatorVariable -= 1
operatorVariable /= 1

// These operators add values of same type -> String + String, Int + Int, Array + Arrays

// Modulus => Find Remainder

var remainder = operatorVariable % 3

// Comparision Operators

var a = 1.1
var b = 2.2
var c = a + b

c > 3
c >= 3
c > 4
c < 4


var checkNameA = "Name A"
var checkNameB = "Name B"

checkNameA == checkNameB

// Not Operator
var notOperatorBoolean: Bool = true
!notOperatorBoolean


// String Interpolation
var stringInterpolation = "Interpolated"
print("This string has been \(stringInterpolation)!")
print("Hi I am \(string), aged \(age)")
print("My half age right now is \(age/2)")


// Arrays

var array = [2, 4, 6, 8, 2, 5, 7]
var songs: [String] = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]

type(of: songs)

// empty array
var emptyArray: [String] = []
var emptyArray2 = [String]()


// Dictionaries

var personArray = ["Taylor", "Justin", "Swift", "December"]
personArray[1]
personArray[3]

var personDictionary: [String: String] = ["first": "Shreyas", "second": "Balachandran", "Age": "24"]
type(of: personDictionary)
personDictionary["first"]


// Conditional Statements

// if x == b {} else {} // else if
// if x == b && x == c
// if x == b || x == c


// Loops

// for x in 1...100
// for x in 1...<100
// for _ in 1...10 // if you don't want to assign a variable

// while x == b {} executes only if condition is true

// repeat {} while x === b // executes code atleast once, then checks for the condition statement and runs code when it's satisfied.

// Loop labels
// outerLoop: for i in 1...10 { for j in 1...10 {} }

// break keyword to break the loop
// break outerLoop (loop label) to exit
// continue - to skip this block of code if condition is bet

// Switch Case

// switch variable { case variableValue: ..... default: }

// Functions
func printName(for name: String) {
    print("The Name is \(name)");
}

printName(for: "Shreyas")

var inoutName: String = "Shreyas"

func printName2(for name: inout String) -> Bool {
//    print('')
    name += " Balachandran";
    print(name);
    return true
}

printName2(for: &inoutName)

// Optionals

func getHaterStatus(weather: String) -> String? {
    if weather == "hate" {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus(weather: "hate")
// By appending a ? at end of the type, we can allow the value to be of nil type, allowing swift to type inference
var optionalStatus: String?
optionalStatus = getHaterStatus(weather: "rainy")


// Optional Unwrapping

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

//if let unwrappedStatus = optionalStatus {
//    // unwrappedStatus contains a non-optional value!
//} else {
//    // in case you want an else block, here you go…
//}


// Optional Chaining

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album)")

//The nil coalescing operator

// let album = albumReleased(year: 2006) ?? "Unknown"


// Enums

enum EnumeratorResult {
    case Success
    case Fail
}

var enumResult = EnumeratorResult.Success

// Enums with additional values
enum Activity {
    case Sport(playing: String)
    case Chilling(with: String)
}

var activityEnum = Activity.Chilling(with: "Learning Swift")

//As you can see, the other cases don't need a speed value – I put that just into wind. Now for the real magic: Swift lets us add extra conditions to the switch/case block so that a case will match only if those conditions are true. This uses the let keyword to access the value inside a case, then the where keyword for pattern matching.
//
//Here's the new function:



//func getHaterStatus(weather: WeatherType) -> String? {
//    switch weather {
//    case .sun:
//        return nil
//    case .wind(let speed) where speed < 10:
//        return "meh"
//    case .cloud, .wind:
//        return "dislike"
//    case .rain, .snow:
//        return "hate"
//    }
//}
//
//getHaterStatus(weather: WeatherType.wind(speed: 5))

// Enums with raw values
enum Planets: Int {
    case Mercury = 1
    case Venus
    case Earth
    case Mars
    case Jupiter
    case Saturun
    case Uranus
    case Neptune
    case Pluto
}

var planetEnum = Planets(rawValue: 3)


// Structs

struct Person {
    var clothes: String
    var shoes: String
    // prepend with mutating if you're changing a value inside of the struct
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
    
//    init() {
//        // code
//    }
}

var shreyas = Person(clothes: "Suit", shoes: "Formal shoes")

print(shreyas.clothes)
var shreyasCopy = shreyas
shreyasCopy.shoes = "Sneakers"


// Class

class Shreyas {
//    var name: String
//    var age: Int
//    var height: Float
//    var isAdult: Bool
    var clothes: String
    var shoes: String

    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
    
    func sing() {
        print("Sing")
    }
    
    deinit {
        // logic
    }
}


// class Shreyas2: Shreyas {}

class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}


class HeavyMetalSinger: Singer {
    var noiseLevel: Int

    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        // Always call super.init to pass values to parent class, so it can do what it needs to do.
        super.init(name: name, age: age)
    }
    // if you want to use a parent class function differently in the child class which inherits.
    //  prepend the function with word 'override'

    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}


// property Observers

//There are two kinds of property observer: willSet and didSet, and they are called before or after a property is changed. In willSet Swift provides your code with a special value called newValue that contains what the new property value is going to be, and in didSet you are given oldValue to represent the previous value.

//struct Person {
//    var age: Int
//    var clothes: String {
//        willSet {
//            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
//        }
//
//        didSet {
//            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
//        }
//
//        var ageInDogYears: int {
//            get {
//                return age * 7
//            }
//        }
//    }
//}


// Static Properties and Methods

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)

// Access Control

class TaylorFan2 {
    private var name: String?
//    If you want to use “file private” access control, just write it as one word like so: fileprivate.
}

// Polymorphism and Typecasting

