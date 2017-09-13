//
//  SupervilianEditViewControllerTests.swift
//  EvilWikiTests
//
//  Created by Michael Kramskoy on 13/09/2017.
//  Copyright © 2017 Michael Kramskoy. All rights reserved.
//

import XCTest
@testable import EvilWiki

class TestableSupervilianEditPresenter: SupervilianEditPresenter {
    var viewIsReady: Bool = false
    override func viewReady() {
        viewIsReady = true
    }
}

class SupervilianEditViewControllerTests: XCTestCase {
    var sut: SupervilianEditViewController!
    var presenter: TestableSupervilianEditPresenter!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: SupervilianEditViewController.id) as! SupervilianEditViewController
        
        presenter = TestableSupervilianEditPresenter()
        
        sut.presenter = presenter
    }
    
    override func tearDown() {
        sut = nil
        presenter = nil
        
        super.tearDown()
    }
    
    func testPresenterInInformedWhenViewIsReady() {
        _ = sut.view
        
        XCTAssert(presenter.viewIsReady)
    }
    
    
}
