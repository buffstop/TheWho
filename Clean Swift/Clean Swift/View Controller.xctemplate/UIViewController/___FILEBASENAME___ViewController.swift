//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Buffstop Xcode Templates
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___DataTransferInterfaceView:class {
    //define View(Controller)s input interface here.
}

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController, ___FILEBASENAMEASIDENTIFIER___DataTransferInterfaceView {
    static let storyboardIdentifier = "___FILEBASENAMEASIDENTIFIER___ViewController"
    var output: ___FILEBASENAMEASIDENTIFIER___DataTransferInterfaceInteractor!
    var router: ___FILEBASENAMEASIDENTIFIER___Router!
    
    // MARK: - OBJECT LIFECYCLE
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ___FILEBASENAMEASIDENTIFIER___Configurator.sharedInstance.configure(viewController: self)
    }
    
    // MARK: - VIEW LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - EVENT HANDLING
    
    // MARK: - DISPLAY LOGIC

    
}


//TODO: delte this commented code and the comment in the Configurator when proven working
//This should be on configurator but for some reason storyboard doesn't detect ViewController's name if placed there
//extension ___FILEBASENAMEASIDENTIFIER___ViewController {
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        router.passDataToNextScene(segue: segue)
//    }
//}
