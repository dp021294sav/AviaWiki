//
//  VehicleGenerator.swift
//  AviaWiki
//
//  Created by Андрей Сергиенко on 06.09.18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import Foundation

struct VehicleGenerator {
    static func generateVehicle() -> [Vehicle] {
        var vehicle: [Vehicle] = []
        
        let plain = Vehicle(name: "Самолет", image: #imageLiteral(resourceName: "самолет"), models: [Model(name: "Ту-204", description: "Советский и российский среднемагистральный узкофюзеляжный пассажирский самолёт, разработанный в конце 1980-х — начале 1990-х годов в ОКБ Туполева для замены на авиалиниях пассажирского самолёта Ту-154."), Model(name: "Ил-96", description: "Советский и российский пассажирский широкофюзеляжный самолёт для авиалиний средней и большой протяжённости, спроектированный в КБ Ильюшина в конце 1980-х годов.")])
        vehicle.append(plain)
        
        let helicopter = Vehicle(name: "Вертолет", image: #imageLiteral(resourceName: "вертолет"), models: [Model(name: "AeroDreams Chi-7", description: "Аргентинский лёгкий многоцелевой вертолёт. Может использоваться в пилотируемом и беспилотном вариантах."), Model(name: "DF Helicopters DF334", description: "Лёгкий коммерческий двухместный вертолёт.Данный вертолёт разработан Анджело и Альфредо Кастильони в 1980-х.Впервые поднялся в воздух в 1989 г. В конструкции вертолета использованы побольшей части композиционные материалы. Он имеет, Rotax 914 4-тактный двигатель с турбонаддувом.")])
        vehicle.append(helicopter)
        
        let deltaplan = Vehicle(name: "Дельтаплан", image: #imageLiteral(resourceName: "дельтаплан"), models: [Model(name: "Aeros Combat L", description: "Безмоторный летательный аппарат тяжелее воздуха, выполненный по схеме бесхвостка со стреловидным крылом, управление полётом которого осуществляется смещением центра масс за счёт перемещения пилота относительно точки подвески."), Model(name: "Stealth", description: "Безмачтовый дельтаплан")])
        vehicle.append(deltaplan)
        
        return vehicle
    }
}
