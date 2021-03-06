//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: - Router
protocol ___VARIABLE_productName:identifier___RouterProtocol: class {}

// MARK: - Presenter
protocol ___VARIABLE_productName:identifier___PresenterProtocol: class {
    var interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol? { get set }
}

// MARK: - Interactor
protocol ___VARIABLE_productName:identifier___InteractorOutputProtocol: class {
    /* Interactor -> Presenter */
}

protocol ___VARIABLE_productName:identifier___InteractorInputProtocol: class {
    /* Presenter -> Interactor */
    var presenter: ___VARIABLE_productName:identifier___InteractorOutputProtocol?  { get set }
}

// MARK: - View
protocol ___VARIABLE_productName:identifier___ViewProtocol: class {
    /* Presenter -> ViewController */
    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?  { get set }
}
