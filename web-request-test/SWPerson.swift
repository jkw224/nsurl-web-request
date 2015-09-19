//
//  swperson.swift
//  web-request-test
//
//  Created by Jonathan Wood on 9/19/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import Foundation

class SWPerson {
    
    private var _name: String
    private var _height: String
    private var _mass: String
    private var _hairColor: String
    
    init (name: String, height: String, mass: String, hair: String) {
        self._name = name
        self._height = height
        self._mass = mass
        self._hairColor = hair
    }
    
    var name: String {
        return _name
    }
    
    var height: String {
        return _height
    }
    
    var mass: String {
        return _mass
    }
    
    var hair: String {
        return _hairColor
    }
    
}