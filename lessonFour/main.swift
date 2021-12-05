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


