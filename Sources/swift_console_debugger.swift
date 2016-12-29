import Foundation

/*
 * SCDebuggable
 *
 * This protocol was used for making any kind of swift item (class, struct, etc.) debuggable
 *
 * If you conform to this protocol, you must provide a debug method:
 *
 *     func debug() -> String
 *
 * Which return a debug String.
 *
 */
protocol SCDebuggable {
    func debug() -> String
}

/*
 * debug(_:)
 *
 * This method require any kind of item (class, struct, etc.) which conforms to the SCDebuggable protocol
 * and print that string in the console
 *
 */
func debug<A: SCDebuggable> (_ obj: A) {
    print(obj.debug())
}

/*
 * debug([_]:)
 *
 * This method require an array of any kind of items (class, struct, etc.) which conforms to the SCDebuggable
 * protocol, then print in the console all the string returned by the debug() method
 */
func debug<A: SCDebuggable> (_ objs: [A]) {
    for obj in objs { print(obj.debug()) }
}

/*
 * debug(_:)
 *
 * This method works for any item which doesn't conforms to the SCDebuggable protocol.
 * The type of the item will be printed in the console.
 *
 */
func debug<A> (_ obj: A) {
    print(type(of: obj))
}