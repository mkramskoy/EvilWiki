//
//  Supervilian+Convinience.swift
//  EvilWikiTests
//
//  Created by Michael Kramskoy on 13/09/2017.
//  Copyright © 2017 Michael Kramskoy. All rights reserved.
//

import Foundation
@testable import EvilWiki

extension Supervilian {
    static func main(weapon: MegaWeapon?) -> Supervilian {
        return Supervilian(title: TestData.mainTitle, name: TestData.mainName, weapon: nil)
    }
}
