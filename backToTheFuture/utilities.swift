//
//  utilities.swift
//  backToTheFuture
//
//  Created by ahmed kamel on 11/5/1441 AH.
//  Copyright © 1441 AH ahmed kamel. All rights reserved.
//

import Foundation
class utilities {
    func getCurrentYear ()->String{
        let date = Date()
        let calendar = Calendar.current
        return String(calendar.component(.year, from: date))
    }
    
    func getLetterAtIndex (str: String, location: Int)->String{
        let index = str.index(str.startIndex, offsetBy: location)
        return String(str[index])
    }
    
    func getCurrentTime ()->String {
        let date = Date()
        let formatter = DateFormatter()
        
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: date)
        
        return timeString
    }
    
    func getRandomYear ()->String {
        return String(arc4random_uniform(8999) + 1000)
    }
}
