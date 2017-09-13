//
//  SupervilianTests.swift
//  EvilWikiTests
//
//  Created by Michael Kramskoy on 13/09/2017.
//  Copyright © 2017 Michael Kramskoy. All rights reserved.
//

import XCTest
@testable import EvilWiki

class TestableWeapon: MegaWeapon {
    var wasFired = false
    func fire() {
        wasFired = true
    }
    
    func verify() {
        XCTAssert(wasFired)
    }
}

class SupervilianTests: XCTestCase {
    var sut: Supervilian!
    var weapon: TestableWeapon!
    
    override func setUp() {
        super.setUp()
        weapon = TestableWeapon()
        sut = Supervilian.main(weapon: weapon)
    }
    
    override func tearDown() {
        weapon = nil
        sut = nil
        super.tearDown()
    }
    
    func testDescriptionIsTitleSpaceName() {
        sut = Supervilian(title: TestData.mainTitle, name: TestData.mainName, weapon: nil)
        
        let description = sut.description
        
        XCTAssertEqual(TestData.mainFullName, description)
    }
    
    func testAttackFiresWeapon() {
        weapon = TestableWeapon()
        sut = Supervilian(title: TestData.mainTitle, name: TestData.mainName, weapon: weapon)
        
        sut.attack()
        
        weapon.verify()//test double "mock"
        //XCTAssertEqual(true, weapon.wasFired) // test double "spy"
    }
    
    func testNameAndTitleAreExtractedFromAFillName() {
        sut = Supervilian(fullName: TestData.mainFullName)
        
        XCTAssertEqual(TestData.mainTitle, sut.title)
        XCTAssertEqual(TestData.mainName, sut.name)
    }
}
