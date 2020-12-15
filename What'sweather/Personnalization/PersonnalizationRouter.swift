//
//  PersonnalizationRouter.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 09/12/2020.
//

import UIKit

let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

protocol PersonnalizationRouterInput: class {
    var viewController: UIViewController? { get set }
    func redirectToHome()
    static func assembleModule() -> UIViewController
}

class PersonnalizationRouter: NSObject, PersonnalizationRouterInput {
    var viewController: UIViewController?
    
    func redirectToHome() {
        // redirect to the home view
    }
    
    static func assembleModule() -> UIViewController {
        let view = storyBoard.instantiateViewController(
            withIdentifier: PersonnalizationView.storyboardID) as! PersonnalizationView
        let presenter = PersonnalizationPresenter()
        let interactor = PersonnalizationInteractor()
        let router = PersonnalizationRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.output = presenter
        router.viewController = view
        return view
    }
}
