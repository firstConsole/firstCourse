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

enum ServiceError: Error {
    case priceServiceError
    case weekdayError
    case serviceTargetError

    var errorServiceMsg: String {
        switch self {
        case .priceServiceError:
            return "Недостаточно денег"
        case .weekdayError:
            return "В этот день запись не производится"
        case .serviceTargetError:
            return "Нет такого доктора или услуги"
        }
    }
}

