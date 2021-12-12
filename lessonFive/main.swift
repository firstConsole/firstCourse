/*

1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.

 */

import Foundation

struct GeneralQueue<T> {
    var values = [T]()

    mutating func enQueue(value: T) {
        values.append(value)
    }
    func printNames() {
        values.forEach { print($0) }
    }
    func countQueue() {
        print("Люди в очереди: \(values.count)\n")
    }
    mutating func deQueue() {
        values.removeLast()
    }
    func clientStatus(name: T) {
        let status = clientsNames.values.map { $0 + " (клиент в очереди)" }

        print(status)
    }
}

struct Services {
    var serviceOpen: String
    var servicePay: String
    var serviceMortgage: String
    var serviceOtherQuestions: String

    subscript(service: Int) -> String {
        get {
            switch service {
            case 1:
                return serviceOpen
            case 2:
                return servicePay
            case 3:
                return serviceMortgage
            case 4:
                return serviceOtherQuestions
            default:
                return "nil"
            }
        }
    }
}

var clientsNames = GeneralQueue(values: [String]())

clientsNames.enQueue(value: "Сидоров Иван")
clientsNames.enQueue(value: "Иванов Дмитрий")
clientsNames.enQueue(value: "Густякова Ирина")
clientsNames.enQueue(value: "Потапова Светлана")

clientsNames.printNames()
clientsNames.countQueue()

clientsNames.enQueue(value: "Бараболя Владимир")

clientsNames.printNames()
clientsNames.countQueue()
clientsNames.deQueue()
clientsNames.printNames()
clientsNames.countQueue()
clientsNames.deQueue()
clientsNames.printNames()
clientsNames.countQueue()

clientsNames.clientStatus(name: "Потапова Светлана")

// Создадим что-то типа поиска по первому символу. Filter
// TODO: вынести в отдельный функционал
let clientsFilter = clientsNames.values.filter { $0.hasPrefix("И") }

print("Имена с выбранным префиксом: \(clientsFilter)")

// Проверка сабскрипта
let serviceChoice = Services(serviceOpen: "Открытие вклада",
                             servicePay: "Оплата услуг",
                             serviceMortgage: "Ипотека",
                             serviceOtherQuestions: "Иные вопросы")

print(serviceChoice[2])
print(serviceChoice[5])
