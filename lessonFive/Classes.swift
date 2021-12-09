import Foundation

final class PassengerCar: CarProtocol {
    var carBrand: String
    var carModel: String
    var carColor: String
    var carReleaseYear: Int
    var carMileAge: Double
    var carWheelSize: Int
    var carAcceleration: Double
    var carBodyAdditions: String
    var isDoorOpen: Bool
    var isEngineStart: Bool
    var isHeadlightsOn: Bool

    init(carBrand: String,
         carModel: String,
         carColor: String,
         carReleaseYear: Int,
         carMileAge: Double,
         carWheelSize: Int,
         carAcceleration: Double,
         carBodyAdditions: String,
         isDoorOpen: Bool,
         isEngineStart: Bool,
         isHeadlightsOn: Bool) {

        self.carBrand = carBrand
        self.carModel = carModel
        self.carColor = carColor
        self.carReleaseYear = carReleaseYear
        self.carMileAge = carMileAge
        self.carWheelSize = carWheelSize
        self.carAcceleration = carAcceleration
        self.carBodyAdditions = carBodyAdditions
        self.isDoorOpen = isDoorOpen
        self.isEngineStart = isEngineStart
        self.isHeadlightsOn = isHeadlightsOn
    }
}

final class TruckCar: CarProtocol {
    var carBrand: String
    var carModel: String
    var carColor: String
    var carReleaseYear: Int
    var carMileAge: Double
    var truckCabineVolume: Double
    var truckFuelType: String
    var isTruckSpecial: Bool
    var isDoorOpen: Bool
    var isEngineStart: Bool
    var isHeadlightsOn: Bool

    init(carBrand: String,
         carModel: String,
         carColor: String,
         carReleaseYear: Int,
         carMileAge: Double,
         truckCabineVolume: Double,
         truckFuelType: String,
         isTruckSpecial: Bool,
         isDoorOpen: Bool,
         isEngineStart: Bool,
         isHeadlightsOn: Bool) {

        self.carBrand = carBrand
        self.carModel = carModel
        self.carColor = carColor
        self.carReleaseYear = carReleaseYear
        self.carMileAge = carMileAge
        self.truckCabineVolume = truckCabineVolume
        self.truckFuelType = truckFuelType
        self.isTruckSpecial = isTruckSpecial
        self.isDoorOpen = isDoorOpen
        self.isEngineStart = isEngineStart
        self.isHeadlightsOn = isHeadlightsOn
    }
}
