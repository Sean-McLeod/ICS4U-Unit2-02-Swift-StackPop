/* This is a class that pushes 
   and prints out elements.

   Sean McLeod
   2021/05/19
*/

class MrCoxallStack {
    var stackArray = [Int]()

    func peekElement() -> Int {
        let topElement = self.stackArray[self.stackArray.count - 1]
        return topElement
    }

    func popElement() -> Int {
        let lastElement = self.stackArray.remove(at: self.stackArray.count - 1)
        return lastElement
    }

    func pushNumber(anElement: Int) {
        self.stackArray.append(anElement);
    }

    func printStack() {
        for item in 0..<self.stackArray.count {
            print(self.stackArray[item])
        }
    }
}
