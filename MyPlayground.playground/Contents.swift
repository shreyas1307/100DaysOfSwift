import UIKit

var str = "Hello, playground";
var arrayStrings: [String] = ["Hi", "World"];
var numFloat: Float = 0.01;
var numInt: Int = 5_000_000;
var multilineString = """
This is
a multiline
string
""";

var double: Double = 3.14;
var boolean: Bool = false;


var stringInterpolation = "Your score was \(double)"

// Declaring constants in Swift
let constant = 2333

//const = 23 /Gives an error


// Type Annotation


let string = "Hello, playground";
let album: String = "String";
let year: Int = 1995;
let height: Double = 167.5;
let isSwiftAwesome: Bool = true;

// Checking type coercion
var typeString = "String";
//typeString = 1234; // Throws error


var evenNumbers = [22,4,6,8]
var songs = ["Shake it off", "You're the one for me!"];
songs[0]

var intArray: [Int] = [2,4,5,67];
var stringArray: [String] = ["Hello", "World"];


// Sets => Unique values in unordered way
let colors = Set(["Red", "Green", "Blue"])

// Tuples - Can't add/remove items in Tuples, fixed in size, can't change types on creation. Can access items using numerical positions or naming them

var name = (first: "Taylo", last: "Swift");
name.0;
name.first

// arrays vs sets vs tuples
// Arrays Ordered, can contain duplicates
// Sets unique values, unordered, specific items can be checked in it.
// Tuples precise unique position and cannot be changed

// Dictionary - Key/Value pairs
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73,
]

// Dictionary Type Annotations
let heightsAnnotations: [String: Double] = [
    "Shreyas": 1.73,
    "Balachandran": 1.78,
]

// Set default value for unknown.
heightsAnnotations["Shreyas"]
heightsAnnotations["Bala", default: 0]


//Arrays sets and Dictionaries are knwn as collections
//Create empty Dictionary
var teams = [String: String]()
// or var teams = Dictionary<String, Int>()
teams["Red"] = "Paul"
					
// Create empty Array
var results = [Int]()
// or var results = Array<Int>()
// Create empty Set

var emptySet = Set<String>()


// Enumerators aka Enums

enum Result {
    case failure
    case success
}

let finalResult = Result.success
// Enum Associated Value
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let currenctActivity = Activity.running(destination: "Workplace")

//Enum Raw Value

enum Planets: Int {
    case mercury = 1
    case venus = 2
    case earth = 3
    case mars = 4
}


let planet3 = Planets(rawValue: 3);


// Practice

var demoArray: [String] = ["Hello", "World"];

var demoSet = Set([1,2,3,4])

var demoTuples = (firstName: "Shreyas", lastName: "Balachandran", age: 24, sex: "Male")

var demoDictionary: [String: Int] = [
    "Shreyas": 1,
    "Balachandran": 2
]


enum demoEnum {
    case first
    case second
    case third
    case fourth
}

let demoEnumResult = demoEnum.first

enum demoEnum2 {
    case first(first: String)
    case second(second: String)
    case third(third: String)
    case fourth(fourth: String)
}

let demuEnum2Result = demoEnum2.second(second: "Shreyas");

enum demoEnum3: String {
    case first = "a"
    case second = "b"
    case third = "c"
    case fourth = "d"
}


let demoEnum3Result = demoEnum3(rawValue: "c")
type(of: demoArray)

var anyArray: [Any] = [1,2, 2.33, 341.223123123, "Shreyas"]


// Loops

// For Loops
let count = 1...10

for number in count {
    print("Number is \(number)")
}

let gameArray = ["RDR2", "AC", "Watch Dogs", "Fifa"]

for game in gameArray {
    print("\(game) is one of the best")
}


// Can make loops without making constants

for _ in gameArray{
    print("Print")
}

// While Loops

var number = 1

while number <= 5 {
    print(number);
    number += 1
}


// Repeat Loops

var repeatNumber = 1

repeat {
    number += 1
    print(number);
} while number <= 4

var countDown = 10
//
//while countDown >= 0 {
//    print(countDown)
//    countDown -= 1
//}

print("Blast off!")

// Exiting Loops

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}


// Exiting multiple loops

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Skipping Items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}


// Infinite Loops

var counter2 = 0

while true {
    print(" ")
    counter2 += 1

    if counter2 == 273 {
        break
    }
}

// Break Infinite loops with break

var _100DaysOfSwift = 1...100
var currentDay: Int = Int()

repeat {
    currentDay += 1
    print("You are at Day \(currentDay)")
    
    if currentDay == 25 {
        print("You're at the quarter mile!")
    } else if currentDay == 50 {
        print("Congrats! You're half way to the finish line!")
    } else if currentDay == 75 {
        print("You're nearly there")
    } else if currentDay == 100 {
        print("Congratulations! You've completed 100 days of Swift and Coding!")
    }
} while currentDay <= 100


// Function

func printHelp(param: String) {
    let message = """
    Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message);
}

printHelp(param: "Hello World")


func squareNum(number: Int) -> Int {
    return number * number
}


// parameter labels

func squareRoot(of number: Int) -> Int {
    return number/number
}

squareRoot(of: 4)

// Omitting parameter labels

func squareRootFunc(_ number: Int) -> Int {
    return number/number * number + number
}

squareRootFunc(4)


func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}


// Varied parametesrs - multiple parameters of same type

func printName(names: String...) {
    for name in names {
        print("Printing \(name)")
    }
}


printName(names: "Hello", "Whats up");


// Throwing error functions

enum PasswordError: Error {
    case obvious
}


func checkPassword(_ password: String) throws -> Bool {
    if password == "Password" {
        throw PasswordError.obvious
    }
    
    return true
}
// running throwing functions

do {
    try checkPassword("Password")
    print("Pass is good")
} catch {
    print("Pass isn't good");
}

// inout parameters - where you want to change number's value outside of the function itself

func doubleValue(number: inout Int) {
    number *= 2
}

var myNum = 2

doubleValue(number: &myNum)


// Closures

let closure1 = {
    print("Hello World")
}


// Closures with Params

let closureWithparams = {(param: String) in
    print("Hello World \(param)")
}

// CLosures with params whtat return // basically an action

let closureReturningParams = {(param: String) -> String in
    return "This is a closure which returns a param \(param)"
}

let driving = {
    print("I'm driving here")
}

func closureAsAFunction(action: () -> Void) {
    print("Hello World in ClosureAsAFunction");
    action();
    print("Hello World after action is completed!")
}

closureAsAFunction(action: driving)


// Closures with trailing syntax

func travel(action: () -> Void) {
    print("Hello World trailinig syntax");
    action();
    print("After action completed!")
}

travel() {
    print("I'm driving in a car");
}

travel {
    print("i'm driving in a car")
}


// Closures as parameters when they accept parameters

func travel2(action: (String) -> Void) {
    print("Hello");
    action("London");
    print("World");
}

travel2 { (place: String) -> Void in
    print("I'm going to \(place) in my car")
}


// Closures short hands

travel2 { (place:String) -> Void in
    print("I'm going to \(place) in my car")
}

travel2 { place -> Void in
    print("I'm going to \(place) in my car")
}
travel2 { place in
    print("I'm going to \(place) in my car")
}
travel2 {
    print("I'm going to \($0) in my car")
}

// with multiple parameters it'll be $0 $1 $2 and so on in shorthand

// Returning Closures from functions

func returningClosuresInsideFunctions() -> (String) -> Void {
    return {
        print("Hello World \($0)"); //Expects the arguments passed into the closure
    }
}

//let resultOfReturningClosures = returningClosuresInsideFunctions()
//resultOfReturningClosures("London");
// or
//let resultOfReturningClosures = returningClosuresInsideFunctions()("London")


// Capturing Values

func capturingValuesFromClosures() -> (String) -> Void {
    var counter = 0
    return {
        print("Hello World \($0)")
        counter += 1
    }
}

let resultFromAllOfIt = capturingValuesFromClosures()


resultFromAllOfIt("Hi")
resultFromAllOfIt("Hi")
resultFromAllOfIt("Hi")
resultFromAllOfIt("Hi")


// Structs - Creating your own custom types - can be given variables, constants and own functions

struct Sport {
    var name: String
}

var tennis = Sport(name: "tennis");


// Computed Properties

struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

var tennis2 = Sport2(name: "tennis", isOlympicSport: true);
print(tennis2.olympicStatus);


// property Observers

struct Progress {
    var task: String
    var amount: Int
}


var progress = Progress(task: "Loading data", amount: 0);

progress.amount = 10
progress.amount = 30
progress.amount = 70
progress.amount = 100

// To print a message everytime a chnage happens, you can use didSet property observer

struct TaskProgress {
    var task: String
    var amount: Int {
        didSet { //did set performs action after value is set
            print("\(task) is now \(amount)% complete")
        }
        willSet { // will set performs the action before value is set
            print("\(task) is in progress!")
        }
    }
};



// Methods functions inside structs are called methods

struct City {
    var population: Int;
    func collectTaxes() -> Int {
        return population * 1000;
    };
};

var London = City(population: 1000000);
London.collectTaxes();


// Mutating Methods

struct Country {
    var name: String
    
    mutating func CountryName() -> Void {
        name = "United Kingdom";
        print(name);
    }
}


var India = Country(name: "India");
print(India);

// Structs such as Arrays and Strings

// Properties and Methods of Strings;

let PropString = "Do or do not, there is no try.";
print(PropString.count);
print(PropString.hasPrefix("Do"));
print(PropString.uppercased());
print(PropString.sorted());


// Properties and Methods of Arrays

var toys = ["woody"];
print(toys.count);

toys.append("Buzz");
toys.firstIndex(of: "Buzz")
toys.sorted()

toys.remove(at: 0)


// Initializers - Different ways to create a struct

struct User1 {
    var username: String
    
    // But what if you want the username to be initialized with no value?
    
    init() {
        username = "Anonymous";
        print("Creating a new user");
    }
}

var user1 = User1()
user1.username = "twostraws"

// Inside methods you get a special constant called self. This self value is particularly useful when you create initializers that have the same parameter names as your property.


struct Person2 {
    var name: String
    
    init(name: String) {
        print("\(name) was born!");
        self.name = name
    }
}


// Lazy Properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct Me {
    var name: String
    var familyTree = FamilyTree()
    
    //But what if you don't want to access the familytree property yet? for that you declare like this
    // lazy var familyTree = FamilyTree()
    // And only if you refer to it once in your code, like
    // var ed = Person(name: "Ed");
    // ed.familyTree
    
    init(name: String) {
        self.name = name
    }
}


// Static Properties and Methods

struct Static {
    var name: String
    static var totalStatics = 0
    
    init(name: String) {
        print("New Struct instantiated");
        Static.totalStatics += 1
        self.name = name
    }
}

print(Static.totalStatics);


// Private

struct Private {
    private var SSN: String
    
    init(id: String) {
        self.SSN = id
    }
    
    func identify() -> String {
        return "My Social Security Number is \(SSN)"
    }
}


// Classes - Creating own Class, class never comes with memberwise initializers

class Dog {
    var Name: String
    var Breed: String
    
    init(name: String, breed: String) {
        self.Name = name
        self.Breed = breed
    }
    
    func makeNoise() {
        print("Woof!");
    }
}

let poppy = Dog(name: "Nancy", breed: "Dachshund")



// Inheritance

class Poodle: Dog {
    
    // Giving it's own initializer
    init(name: String) {
        // For safety, call super.init() from child cases, just in case there is some work to be done by parent class has to do upon creatin
        super.init(name: name, breed: "Poodle")
    }
}


// Overriding Class methods

class Dachshund: Dog {
    override func makeNoise() {
        print("Yip")
    }
}

// Final Classes - Prevent other classes from inheriting from it, and can't override methods declared to change it's behaviour

final class Cat {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
}


// Copying Objects - struct copied, both original and copied is diff, but classes both are same thing. hence changing 1 changes other.

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer);

var singerCopy = singer
singerCopy.name = "Kanye West"
print(singer.name); // Kanye West

// They point to same spot in memory/heap. For Struct, the copied value has it's own value than the original and doesn't get affected.

// Deinitializers -- When class gets destroyed, this runs.

class Person {
    var name = "John Doe"
    
    init() {
        print(name + " is alive")
    }
    
    func printGreeting() {
        print("Hello \(name)!")
    }
    
    // TO Deinitialize it
    
    deinit {
        print("Class has been deinitialized!")
    }
}


for _ in 1...3 {
    let Person12 = Person()
    Person12.printGreeting();
}


// Mutability - Way to deal with constants

// Const struct with variable prop, can't be changed
// Const class with variable prop, can be changed

class Musician {
    // If var is used, after initializing the value cab be chanegd, but if let is used, value cannot be changeed
    var name = "Taylor Swift"
    
    init(name: String) {
        self.name = name
    }
}

let Johnathan = Musician(name: "Jonathan");
Johnathan.name = "Jake Dawson"
print(Johnathan.name)


// End Classes
