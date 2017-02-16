//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String:String] = ["Joe":"Peanut Butter and Chocolate", "Tim":"Natural Vanilla","Sophie":"Mexican Chocolate", "Deniz":"Natural Vanilla", "Tom":"Mexican Chocolate", "Jim":"Natural Vanilla", "Susan":"Cookies 'N' Cream"]
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var namesArray: [String] = []
        for (name, flavorType) in favoriteFlavorsOfIceCream {
            if flavor == flavorType {
                namesArray.append(name)
            }
        }
        return namesArray
    }
    
    
    
    
    // 3.
        func count(forFlavor flavor: String) -> Int {
            let peopleNames = names(forFlavor: flavor)
            var peopleNum: Int = 0
            for (_,_) in favoriteFlavorsOfIceCream {
                peopleNum = peopleNames.count
            }
            return peopleNum
    }
    
    
    
    
    // 4.
            func flavor(forPerson person: String) -> String? {
                    if let flavorType = favoriteFlavorsOfIceCream[person] {
                        return flavorType
                    } else {
                        return nil
                    }
            }
    
    
    
    
    
    
    // 5.
                func replace(flavor: String, forPerson person: String) -> Bool {
                    if let _ = favoriteFlavorsOfIceCream[person] {
                        favoriteFlavorsOfIceCream[person] = flavor
                        return true
                    } else {
                        return false
                    }
    }
    
    
    
    // 6.
                    func remove(person: String) -> Bool {
                            if let _ = favoriteFlavorsOfIceCream[person] {
                                favoriteFlavorsOfIceCream[person] = nil
                                return true
                            } else {
                                return false
                            }
                        }

    
    
    
    
    // 7.
                        func numberOfAttendees() -> Int {
                            let attendees = favoriteFlavorsOfIceCream.count
                            return attendees
                        }
    
    
    
    
    
    
    // 8.
                        func add(person: String, withFlavor flavor: String) -> Bool {
                            for (name, _) in favoriteFlavorsOfIceCream {
                                if name == person {
                                    return false
                                } else {
                                    favoriteFlavorsOfIceCream[person] = flavor
                                    return true
                                }
                            }
                            return false
            }
    
    
    
    
    
    
    
    // 9.
                        func attendeeList() -> String {
                        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
                            var sentence = "\(allNames[0]) likes \(favoriteFlavorsOfIceCream[allNames[0]]!)"
                            
                            for num in 1...(allNames.count - 1) {
                            
                                sentence += "\n\(allNames[num]) likes \(favoriteFlavorsOfIceCream[allNames[num]]!)"
                            }
                            return sentence
            }
}
