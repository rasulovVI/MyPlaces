//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Orienbank on 26.08.2020.
//  Copyright © 2020 Orienbank. All rights reserved.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = [
          "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
          "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
          "Speak Easy", "Morris Pub", "Вкусные истории",
          "Классик", "Love&Life", "Шок", "Бочка"
      ]

    static func getPlaces() -> [Place] {
        var places = [Place]()
        for place in restaurantNames{
            places.append(Place(name: place, location: "Уфа", type: "Ресторан", image: place))
        }
        
        return places
    }
}
