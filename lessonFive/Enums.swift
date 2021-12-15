import Foundation

enum AppointmentError: Error {
    case priceError
    case availableError
    case doctorTargetError

    var errorMsg: String {
        switch self {
        case .priceError:
            return "Недостаточно денег"
        case .availableError:
            return "Недостаточно мест для записи"
        case .doctorTargetError:
            return "Нет такого доктора или услуги"
        }
    }
}
