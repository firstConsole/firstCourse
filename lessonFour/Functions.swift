import Darwin

func passengerCarSpecs() {
    let passengerCar = PassengerCar.init(isCarTrunk: true,
                                         carTrunkVolume: 3467,
                                         isCarEngineTurbo: false,
                                         isCarSpoiler: true)

    print("Отличительные черты легкового автомобиля 🚗")

    passengerCar.isCarTrunk == true ? print("Есть багажник") : print("Багажника нет")
    passengerCar.carTrunkVolume != 0 ? print("Объём багажника = \(passengerCar.carTrunkVolume)") : print()
    passengerCar.isCarEngineTurbo == true ? print("Турбина есть") : print("Турбина отсутствует")
    passengerCar.isCarSpoiler == true ? print("Есть спойлер") : print("Спойлер отсутствует")
}

func truckCarSpecs() {
    let truckCar = TruckCar.init(isCarBooth: true,
                                 carBoothVolume: 11547,
                                 isCarFrame: false)

    truckCar.isCarBooth == true ? print("У этой машины есть будка") : print("На машине будка не предусмотрена!")
    truckCar.carBoothVolume != 0 ? print("Объём будки = \(truckCar.carBoothVolume)") : print("Нет информации!")
    truckCar.isCarFrame == true ? print("Багажник открытый, с бортами") : print("Уже установлена будка!")
}

func engineMode(for engine: EngineMode) {
    switch engine {

    case .started:
        print("Запустили движок 💨")
    case .stoped:
        print("Заглушили движок 🛑")
    case .freeze:
        print("Двигатель не запущен 💤")
    }
}

func choosingEngineMode() {
    print("\(EngineMode.freeze.rawValue)\n1. Завести двигатель\n2. Заглушить двигатель")

    let engine = readLine()

    if engine == "1" {
        print(EngineMode.started.rawValue)
    } else if engine == "2" {
        print(EngineMode.stoped.rawValue)
    } else {
        print("Ошибка!!!")
    }
}

func headlightsTurnMode(for headlightsTurn: HeadlightsTurn) {
    switch headlightsTurn {
    case .on:
        print("Включаем фары")
    case .off:
        print("Выключаем фары")
    case .lowBeam:
        print("Включаем ближний свет")
    case .highBeam:
        print("Включаем дальний свет")
    }
}

func tryHeadlightsTurn() {
    print("Включить фары?\n1. Да\n2. Нет")

    let headlights = readLine()

    if headlights == "1" {
        print("\(HeadlightsTurn.on.rawValue) и \(HeadlightsTurn.lowBeam.rawValue)")
    } else {
        print("Мы не сможем поехать без света!")
        tryHeadlightsTurn()
    }
}

func truckCarGeneral() {
    print("Бренд: \(truckCarGeneralInfo.carBrand)")
    print("Модель: \(truckCarGeneralInfo.carModel)")
    print("Год выпуска: \(truckCarGeneralInfo.releaseYear)")
    print("Цвет кузова: \(truckCarGeneralInfo.carColor)")
    print("Размер дисков ': \(truckCarGeneralInfo.carWheels)")
    print("Двигатель: \(truckCarGeneralInfo.carEngine)")
    print("Тип кузова: \(truckCarGeneralInfo.carBody)")
}

func passengerCarGeneral() {
    print("Бренд: \(passengerCarGeneralInfo.carBrand)")
    print("Модель: \(passengerCarGeneralInfo.carModel)")
    print("Год выпуска: \(passengerCarGeneralInfo.releaseYear)")
    print("Цвет кузова: \(passengerCarGeneralInfo.carColor)")
    print("Размер дисков ':\(passengerCarGeneralInfo.carWheels)")
    print("Двигатель: \(passengerCarGeneralInfo.carEngine)")
    print("Тип кузова: \(passengerCarGeneralInfo.carBody)")
}

func choosingTypeOfCar() {
    print("↓Выберите тип транспорта↓\n1. Грузовая 🚚\n2. Легковая 🚗")

    let choice = readLine()

    if choice == "1" {
        passengerCarGeneral()
        passengerCarSpecs()
    } else if choice == "2"{
        truckCarGeneral()
        truckCarSpecs()
    } else {
        print("Нужно выбрать хотя бы одну машину!")
        choosingTypeOfCar()
    }
}

func getUserName() -> String {
    let userName: String? = readLine()

    guard userName == userName else { return "ERROR" }

    print("Привет ✋🏼 \(userName!)!\n🚘 Давай соберём тачку! 🚘")

    return userName!
}

func startTheTravel() {
    print("Поехали?\n1. Да, погнали\n2. Нет, я подожду")

    let starting = readLine()

    starting == "1" ? print("☀️ 🚗💨") : print("Bye Bye!")
}

