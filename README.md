# swift-console-debugger
Some usefull protocols and functions for printing swift objects and types in console.

If you want to make your swift type (class, struct, etc.) debuggable, you can conform it to the SCDebuggable protocol,
then implement the debug() -> String method:

    struct Person {
        let name: String
        let age: Int
    }

    extension Person: SCDebuggable {
        func debug() -> String {
            return "Name: \(name), Age: \(age)"
        }
    }

Then you can start to use the debug(_:) function. Simply, pass any variable of that type to that method to print out
your debug string.

    let matteo = Person(name: "Matteo", age: 32)
    debug(matteo)

It will print out this in the console:

    Name: Matteo, Age: 32

You can also create an array of your types, then pass it to the same method:

    let family = [ matteo, Person(name: "Andrea", age: 24) ]
    debug(family)

It will print out this in the console:

    Name: Matteo, Age 32
    Name: Andreq, Age 24

Finally, you can also pass any kind of item to the same debug method. If that item doesn't conform to the SCDebuggable
protocol:

    let f = String.localizedCaseInsensitiveCompare
    debug(f)

then you obtain the type in the console:

    (String) -> (String) -> ComparisonResult
