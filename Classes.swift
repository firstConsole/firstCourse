import Foundation

final class OnlineAppointment {

    var appointment = ["Педиатр": Appointment(doctorTarget: NameDoc(doctor: "Педиатр"), price: 1500, available: 8),
                       "Терапевт": Appointment(doctorTarget: NameDoc(doctor: "Терапевт"), price: 1800, available: 3),
                       "Хирург": Appointment(doctorTarget: NameDoc(doctor: "Хирург"), price: 2300, available: 0),
                       "Стоматолог": Appointment(doctorTarget: NameDoc(doctor: "Стоматолог"), price: 5700,
                                                 available: 4700)]

    var deposite = 0

    func onlineAppointment(doctorTarget: String) throws -> NameDoc {

        guard let doctor = appointment[doctorTarget] else { throw AppointmentError.doctorTargetError.errorMsg }
        guard doctor.available > 0 else { throw AppointmentError.availableError.errorMsg }
        guard doctor.price <= deposite else { throw AppointmentError.priceError.errorMsg }

        var newAppointment = doctor

        deposite -= newAppointment.price
        newAppointment.available -= 1
        appointment[doctorTarget] = newAppointment

        print("Вы успешно записаны к врачу: \(newAppointment.doctorTarget.doctor)")

        if deposite >= 0 {
            print("Ваш остаток: \(deposite)₽")
        }
        return newAppointment.doctorTarget
    }
}
