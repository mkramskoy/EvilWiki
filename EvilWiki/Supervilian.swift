//
//  Supervilian.swift
//  EvilWiki
//
//  Created by Michael Kramskoy on 13/09/2017.
//  Copyright © 2017 Michael Kramskoy. All rights reserved.
//

import Foundation

struct Supervilian: CustomStringConvertible {
    var title: String
    var name: String
    var weapon: MegaWeapon? = nil
    
    var description: String {
        return "\(title) \(name)"
    }
    
    func attack() {
        weapon?.fire()
    }
}

extension Supervilian {
    init(fullName: String) {
        let components = fullName.components(separatedBy: " ")
        
        title = components[0]
        name = components[1]
    }
}
