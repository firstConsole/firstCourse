/*

1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?.
Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.

 2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций.
Вызовите их и обработайте результат вызова при помощи конструкции try/catch.

 */

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
