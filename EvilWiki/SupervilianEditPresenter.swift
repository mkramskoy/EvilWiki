//
//  SupervilianEditPresenter.swift
//  EvilWiki
//
//  Created by Michael Kramskoy on 13/09/2017.
//  Copyright © 2017 Michael Kramskoy. All rights reserved.
//

import Foundation

class SupervilianEditPresenter {
    var view: SupervilianEditView!
    func viewReady() {
        view.enableSaveButton(false)
    }
}
