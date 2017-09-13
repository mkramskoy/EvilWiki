//
//  SupervilianEditPresenterTests.swift
//  EvilWikiTests
//
//  Created by Michael Kramskoy on 13/09/2017.
//  Copyright © 2017 Michael Kramskoy. All rights reserved.
//

import XCTest
@testable import EvilWiki

class TestableSupervilianEditView: SupervilianEditView {
    var saveEnabled = false
    func enableSaveButton(_ enable: Bool) {
        saveEnabled = true
    }
}

class SupervilianEditPresenterTests: XCTestCase {
    var sut: SupervilianEditPresenter!
    var view: TestableSupervilianEditView!
    
    override func setUp() {
        super.setUp()
        
        view = TestableSupervilianEditView()
        sut = SupervilianEditPresenter()
        sut.view = view
    }
    
    override func tearDown() {
        sut = nil
        view = nil
        
        super.tearDown()
    }
    
    func testViewReadyDisablesSaveButton() {
        sut.viewReady()
        
        XCTAssert(view.saveEnabled)
    }
}
