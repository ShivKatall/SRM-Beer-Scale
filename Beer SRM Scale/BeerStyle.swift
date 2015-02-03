//
//  BeerStyle.swift
//  Beer SRM Scale
//
//  Created by Cole Bratcher on 1/26/15.
//  Copyright (c) 2015 Cole Bratcher. All rights reserved.
//

import Foundation

class BeerStyle {
    var name : String!
    var range : Range<Int>!
    var yeast : Yeast
    
    init (name: String, yeast: Yeast, range: Range<Int>) {
        self.name = name
        self.yeast = yeast
        self.range = range
        
    }
}

enum Yeast : Int {
    case Lager
    case Ale
}