import Foundation

extension String: Error {
    // Просто потому что нужно было стрингу подписать на еррор
}

let appointment = OnlineAppointment()

appointment.deposite = 10000

do {
    try appointment.onlineAppointment(doctorTarget: "Педиатр")
} catch {
    print(error)
}

let weekdays = (monday: "Понедельник",
                tuesday: "Вторник",
                wednesday: "Среда",
                thursday: "Четверг",
                friday: "Пятница")

do {
    try appointment.onlineService(serviceTarget: "УЗИ")
} catch {
    print(error)
}

