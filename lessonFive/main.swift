/*
1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем:
открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие,
                                                            реализовывать следует только те действия,
                                                            реализация которых общая для всех автомобилей).
3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства,
отличающиеся для спортивного автомобиля и цистерны.
4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
5. Создать несколько объектов каждого класса. Применить к ним различные действия.
6. Вывести сами объекты в консоль.
*/

import Foundation

let doorCondition = DoorCondition.openDoor

let passengerCarOne: CarProtocol = PassengerCar.init(carBrand: "Honda",
                                       carModel: "Civic",
                                       carColor: "Blue",
                                       carReleaseYear: 2019,
                                       carMileAge: 45769.0,
                                       carWheelSize: 16,
                                       carAcceleration: 8.2,
                                       carBodyAdditions: "Spoiler",
                                       isDoorOpen: false,
                                       isEngineStart: true,
                                       isHeadlightsOn: false)

print(passengerCarOne)
print("Год выпуска: \(passengerCarOne.carReleaseYear.description)")
print("Пробег, км: \(passengerCarOne.carMileAge)")
passengerCarOne.checkEngine()
passengerCarOne.doorOpen(the: .openDoor)
passengerCarOne.checkHeadlights(the: .headlightsOn)
print()

let passengerCarTwo: CarProtocol = PassengerCar.init(carBrand: "Toyota",
                                                     carModel: "Vista",
                                                     carColor: "White",
                                                     carReleaseYear: 2001,
                                                     carMileAge: 245923.0,
                                                     carWheelSize: 15,
                                                     carAcceleration: 12.5,
                                                     carBodyAdditions: "Spoiler",
                                                     isDoorOpen: true,
                                                     isEngineStart: true,
                                                     isHeadlightsOn: true)

print(passengerCarTwo)
print("Год выпуска: \(passengerCarTwo.carReleaseYear.description)")
print("Пробег, км: \(passengerCarTwo.carMileAge)")
passengerCarTwo.checkEngine()
passengerCarTwo.doorOpen(the: .openDoor)
passengerCarTwo.checkHeadlights(the: .headlightsOn)
print()

let truckCarOne = TruckCar.init(carBrand: "Mercedes",
                             carModel: "Sprinter",
                             carColor: "White",
                             carReleaseYear: 2014,
                             carMileAge: 184563.5,
                             truckCabineVolume: 2450,
                             truckFuelType: "ДТ",
                             isTruckSpecial: false,
                             isDoorOpen: false,
                             isEngineStart: false,
                             isHeadlightsOn: false)

print(truckCarOne)
print("Год выпуска: \(truckCarOne.carReleaseYear.description)")
print("Пробег, км: \(truckCarOne.carMileAge)")
print("Объём кабины: \(truckCarOne.truckCabineVolume)")
print("Тип топлива: \(truckCarOne.truckFuelType)")
truckCarOne.checkEngine()
truckCarOne.doorOpen(the: .openDoor)
truckCarOne.checkHeadlights(the: .headlightsOn)
print()

let truckCarTwo = TruckCar.init(carBrand: "Ford",
                             carModel: "Transit",
                             carColor: "Black",
                             carReleaseYear: 2004,
                             carMileAge: 344786.5,
                             truckCabineVolume: 2370,
                             truckFuelType: "ДТ",
                             isTruckSpecial: false,
                             isDoorOpen: true,
                             isEngineStart: true,
                             isHeadlightsOn: true)

print(truckCarTwo)
print("Год выпуска: \(truckCarTwo.carReleaseYear.description)")
print("Пробег, км: \(truckCarTwo.carMileAge)")
print("Объём кабины: \(truckCarTwo.truckCabineVolume)")
print("Тип топлива: \(truckCarTwo.truckFuelType)")
truckCarTwo.checkEngine()
truckCarTwo.doorOpen(the: .openDoor)
truckCarTwo.checkHeadlights(the: .headlightsOn)

