//
//  main.swift
//  AssignmentTestSwift
//
//  Created by Angelos Staboulis on 2/1/23.
//

import Foundation
class AssignmentTestSwift{
    static let shared = AssignmentTestSwift()
    private init(){}
    func checkEvenPair(string:String) -> Bool {
        var returnValue:Bool!=false
        do {
            let regex = try NSRegularExpression(pattern: "[02468]"+"{2}")
            let matches = regex.matches(in: string, range: NSRange(0..<string.utf16.count))
            let matchingWords = matches.map {
                String(string[Range($0.range, in: string)!])
            }
            if matchingWords.count > 0 {
                returnValue = true
            }
            else{
                returnValue = false
            }
        } catch {
            print("Regex was bad!")
        }
        return returnValue
    }

}
debugPrint(AssignmentTestSwift.shared.checkEvenPair(string: "f178svg3k19k46"))
