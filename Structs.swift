import Foundation

struct Appointment {
    let doctorTarget: NameDoc
    let price: Int
    var available: Int
}

struct NameDoc {
    let doctor: String
}

struct Services {
    let serviceName: String
    let servicePrice: Int
    let weekDay: String
}
