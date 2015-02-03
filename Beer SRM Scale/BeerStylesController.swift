//
//  BeerStylesController.swift
//  Beer SRM Scale
//
//  Created by Cole Bratcher on 1/26/15.
//  Copyright (c) 2015 Cole Bratcher. All rights reserved.
//

import Foundation

class BeerStylesController {
    var beerStyles : [BeerStyle]!
    
    init () {
        beerStyles =
            
            [
                // Ale Models
                
                BeerStyle(name: "Berliner Weisse",      yeast: .Ale, range: 2...3),
                BeerStyle(name: "Kölsch",               yeast: .Ale, range: 3...5),
                BeerStyle(name: "American Wheat",       yeast: .Ale, range: 3...6),
                BeerStyle(name: "Lambic",               yeast: .Ale, range: 3...7),
                BeerStyle(name: "Weizen",               yeast: .Ale, range: 3...9),
                BeerStyle(name: "Belgian White",        yeast: .Ale, range: 4...7),
                BeerStyle(name: "Belgian Tripel",       yeast: .Ale, range: 4...7),
                BeerStyle(name: "Special Bitter",       yeast: .Ale, range: 4...15),
                BeerStyle(name: "English Pale Ale",     yeast: .Ale, range: 8...14),
                BeerStyle(name: "India Pale Ale",       yeast: .Ale, range: 8...15),
                BeerStyle(name: "American Pale Ale",    yeast: .Ale, range: 10...17),
                BeerStyle(name: "Belgian Dubbel",       yeast: .Ale, range: 10...17),
                BeerStyle(name: "Barleywine",           yeast: .Ale, range: 6...19),
                BeerStyle(name: "Altbier",              yeast: .Ale, range: 13...19),
                BeerStyle(name: "Dunkelweizen",         yeast: .Ale, range: 14...23),
                BeerStyle(name: "Brown Ale",            yeast: .Ale, range: 18...35),
                BeerStyle(name: "Scottish Ale",         yeast: .Ale, range: 14...25),
                BeerStyle(name: "Porter",               yeast: .Ale, range: 22...35),
                BeerStyle(name: "Stout",                yeast: .Ale, range: 24...40),
                
                // Lager Models
                
                BeerStyle(name: "American Lager",       yeast: .Lager, range: 2...6),
                BeerStyle(name: "Pilsener",             yeast: .Lager, range: 3...6),
                BeerStyle(name: "Maibock",              yeast: .Lager, range: 6...11),
                BeerStyle(name: "California Common",    yeast: .Lager, range: 10...14),
                BeerStyle(name: "Vienna Lager",         yeast: .Lager, range: 10...16),
                BeerStyle(name: "Doppelbock",           yeast: .Lager, range: 6...25),
                BeerStyle(name: "Bock",                 yeast: .Lager, range: 14...22),
                BeerStyle(name: "Munich Dunkel",        yeast: .Lager, range: 14...28),
                BeerStyle(name: "Eisbock",              yeast: .Lager, range: 18...30),
                BeerStyle(name: "Oktoberfest",          yeast: .Lager, range: 10...16),
                BeerStyle(name: "Schwarzbier",          yeast: .Lager, range: 17...30),
            ]
    }
    
    func makeBeerStyleStringsFromSRM(srmNumber: Int) -> (ales: String, lagers: String) {
        var aleString = String()
        var lagerString = String()
        
        for beerStyle in beerStyles {
            let first = beerStyle.range.startIndex
            let last = beerStyle.range.endIndex
            
            if first...last ~= srmNumber {
                if beerStyle.yeast == .Ale {
                    aleString += ("- \(beerStyle.name)\r")
                } else if beerStyle.yeast == .Lager {
                    lagerString += ("- \(beerStyle.name)\r")
                }
                
            }
        }
        return (aleString, lagerString)
    }
}