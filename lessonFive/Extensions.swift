import Foundation

extension CarProtocol {
    func doorOpen(the actionDoor: DoorCondition) {
        switch actionDoor {
        case .openDoor:
            print("Двери открыты!")
        case .closeDoor:
            print("Двери закрыты")
        }
    }
}

extension CarProtocol {
    func engineStart(the actionEngine: EngineCondition) {
        switch actionEngine {
        case .ignitionTurn:
            print("Зажигание - ОК!")
        case .startEngine:
            print("Двигатель заведён!")
        case .turnOffEngine:
            print("Двигатель заглушен!")
        }
    }
}

extension CarProtocol {
    func headlightsTurn(the actionHeadlights: HeadlightsCondition) {
        switch actionHeadlights {
        case .headlightsOn:
            print(actionHeadlights)
        case .headlightsOff:
            print(actionHeadlights)
        }
    }
}

extension CarProtocol {
    func checkEngine() {
        if passengerCarOne.isEngineStart == false {
            passengerCarOne.engineStart(the: .ignitionTurn)
            passengerCarOne.engineStart(the: .startEngine)
        } else if passengerCarOne.isEngineStart == true {
            print("Двигатель заведён!")
        } else if truckCarOne.isEngineStart == false {
            truckCarOne.engineStart(the: .ignitionTurn)
            truckCarOne.engineStart(the: .startEngine)
        } else if truckCarOne.isEngineStart == true {
            print("Двигатель заведён!")
        }
    }
}

extension CarProtocol {
    func checkHeadlights(the actionHeadlights: HeadlightsCondition) {
        switch actionHeadlights {
        case .headlightsOn:
            print("Фары включены")
        case .headlightsOff:
            print("Фары выключены")
        }
    }
}

// TODO: доделаю позже, пока реализовал по дефолту
extension PassengerCar: CustomStringConvertible {
    var description: String {
        return "Бренд: " + carBrand + " Модель: " + carModel + " Цвет: " + carColor +
        " Дополнительно: " + carBodyAdditions
    }

    func printPassengerCarDescription() {
        print(description)
    }
}


extension TruckCar: CustomStringConvertible {
    var description: String {
        return "Бренд: " + carBrand + " Модель: " + carModel + " Цвет: " + carColor
    }

    func printTruckCarDescription() {
        print(description)
    }
}
