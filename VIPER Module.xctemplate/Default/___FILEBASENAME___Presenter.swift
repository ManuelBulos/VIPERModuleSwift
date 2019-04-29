//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class ___VARIABLE_productName:identifier___Presenter {

    var interactor: ___VARIABLE_productName:identifier___InteractorProtocol?
    weak private var view: ___VARIABLE_productName:identifier___ViewProtocol?
    private let router: ___VARIABLE_productName:identifier___RouterProtocol

    init(interactor: ___VARIABLE_productName:identifier___InteractorProtocol?, router: ___VARIABLE_productName:identifier___RouterProtocol, view: ___VARIABLE_productName:identifier___ViewProtocol) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }

}

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresenterProtocol {}
