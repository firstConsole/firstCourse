//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают
//эти автомобили.
//Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar,
//а какие – sportCar. Добавить эти действия в перечисление.
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

import Foundation

print("↓Введите ваше имя↓")

_ = getUserName()

let truckCarGeneralInfo = Car.init(carBrand: "Ford",
                               carModel: "Transit",
                               releaseYear: 2004,
                               carColor: "White",
                               carWheels: 16,
                               carEngine: "2.0 TSCI",
                               carBody: "All-Metal Body")

let passengerCarGeneralInfo = Car.init(carBrand: "Toyota",
                                       carModel: "Vista",
                                       releaseYear: 2001,
                                       carColor: "White",
                                       carWheels: 15,
                                       carEngine: "1ZZ-FE 1.8",
                                       carBody: "Sedan")

choosingTypeOfCar()
choosingEngineMode()
tryHeadlightsTurn()
startTheTravel()
