//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class ___VARIABLE_productName:identifier___Router {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let router = ___VARIABLE_productName:identifier___Router()
        let view = ___VARIABLE_productName:identifier___ViewController()
        let presenter = ___VARIABLE_productName:identifier___Presenter(interactor: interactor, router: router, view: view)

        interactor.presenter = presenter
        router.viewController = view
        view.presenter = presenter

        return view
    }
}

extension ___VARIABLE_productName:identifier___Router: ___VARIABLE_productName:identifier___RouterProtocol {}
