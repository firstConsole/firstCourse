import Foundation

struct Queue<T> {
    var data = [T]()

    mutating func enQueue(clientName: T) {
        data.append(clientName)
    }
    func printClientName() {
        print(clientName)
    }
}
