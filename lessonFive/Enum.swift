import Foundation

enum DoorCondition {
    case openDoor
    case closeDoor
}

enum EngineCondition {
    case ignitionTurn
    case startEngine
    case turnOffEngine
}

enum HeadlightsCondition {
    case headlightsOn
    case headlightsOff

    var headlights: String {
        switch self {
        case .headlightsOn:
            return "Фары включены"
        case .headlightsOff:
            return "Фары выключены"
        }
    }
}


