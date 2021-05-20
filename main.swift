/* This is a program that
   stacks information using OOP.

   Sean McLeod
   2021/05/19
*/

enum IntParsingError: Error {
    case overflow
    case invalidInput
}

// call object
let myStack = MrCoxallStack()
print("Stack program\n")
// input
print("How many items are you going to add: ")

do {
    guard let nOfItems = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print()

    for item in 1...nOfItems {
        // get input and push them in to pushNumber function
        print("Element \(item): ", terminator: " ")
        guard let anElement = Int(readLine()!) else {
            throw IntParsingError.invalidInput
        }
        myStack.pushNumber(anElement:anElement)
    }
    // print the items
    print("\nThese are the items: ")
    myStack.printStack()
    // call the getter
    print("\nYour last element: ")
    print(myStack.peekElement())
    // call the pop method
    print("\nYour last element that was removed: ")
    print(myStack.popElement())
    // print the items
    print("\nThese are the refreshed items: ")
    myStack.printStack()

} catch {
    print("\nPlease enter an integer")
}
