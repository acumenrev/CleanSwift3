//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

// MARK: - Connect View, Interactor, and Presenter


extension ___FILEBASENAMEASIDENTIFIER___Interactor: ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput {
}

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___InteractorOutput {
}

class ___FILEBASENAMEASIDENTIFIER___Configurator {
  // MARK: - Object lifecycle
  
  static let sharedInstance = ___FILEBASENAMEASIDENTIFIER___Configurator()
  
  private init() {

  }
  
  // MARK: - Configuration
  
  func configure(viewController: ___FILEBASENAMEASIDENTIFIER___ViewController) {
    let router = ___FILEBASENAMEASIDENTIFIER___Router()
    router.viewController = viewController
    
    let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
    presenter.output = viewController
    
    let interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
    interactor.output = presenter
    
    viewController.output = interactor
    viewController.router = router
  }
}
