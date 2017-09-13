//
//  SupervilianEditViewController.swift
//  EvilWiki
//
//  Created by Michael Kramskoy on 13/09/2017.
//  Copyright © 2017 Michael Kramskoy. All rights reserved.
//

import UIKit

class SupervilianEditViewController: UIViewController, SupervilianEditView {
    @IBOutlet var saveButton: UIBarButtonItem!
    
    var presenter: SupervilianEditPresenter?
    
    static let id = "SupervilianEditViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewReady()
    }
    
    func enableSaveButton(_ enable: Bool) {
        saveButton.isEnabled = enable
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        
    }
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        
    }
}
