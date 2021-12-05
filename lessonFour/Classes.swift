import Foundation

class Car {
    let carModel: String
    let carBrand: String
    let releaseYear: Int
    let carColor: String
    let carWheels: Int
    let carEngine: String
    let carBody: String

    init(carBrand: String,
         carModel: String,
         releaseYear: Int,
         carColor: String,
         carWheels: Int,
         carEngine: String,
         carBody: String) {

        self.carModel = carModel
        self.carBrand = carBrand
        self.releaseYear = releaseYear
        self.carColor = carColor
        self.carWheels = carWheels
        self.carEngine = carEngine
        self.carBody = carBody
    }
}

final class PassengerCar: Car {
    let isCarTrunk: Bool
    let carTrunkVolume: Int
    let isCarEngineTurbo: Bool
    let isCarSpoiler: Bool

    init(isCarTrunk: Bool,
         carTrunkVolume: Int,
         isCarEngineTurbo: Bool,
         isCarSpoiler: Bool) {

        self.isCarTrunk = isCarTrunk
        self.carTrunkVolume = carTrunkVolume
        self.isCarEngineTurbo = isCarEngineTurbo
        self.isCarSpoiler = isCarSpoiler

        super.init(carBrand: "Toyota",
                   carModel: "Vista",
                   releaseYear: 2001,
                   carColor: "White",
                   carWheels: 15,
                   carEngine: "1ZZ-FE 1.8",
                   carBody: "Sedan")
    }
}

final class TruckCar: Car {
    let isCarBooth: Bool
    let carBoothVolume: Int
    let isCarFrame: Bool

    init(isCarBooth: Bool,
         carBoothVolume: Int,
         isCarFrame: Bool) {
        self.isCarBooth = isCarBooth
        self.carBoothVolume = carBoothVolume
        self.isCarFrame = isCarFrame

        super.init(carBrand: "Ford",
                   carModel: "Transit",
                   releaseYear: 2004,
                   carColor: "White",
                   carWheels: 16,
                   carEngine: "2.0 TSCI",
                   carBody: "All-Metal Body")
    }

}

