import Foundation

protocol CarProtocol {
    var carBrand: String { get }
    var carModel: String { get }
    var carColor: String { get }
    var carReleaseYear: Int { get }
    var carMileAge: Double { get }
    var isDoorOpen: Bool { get }
    var isEngineStart: Bool { get }
    var isHeadlightsOn: Bool { get }

    func doorOpen(the actionDoor: DoorCondition)
    func engineStart(the actionEngine: EngineCondition)
    func checkHeadlights(the actionHeadlights: HeadlightsCondition)
}
