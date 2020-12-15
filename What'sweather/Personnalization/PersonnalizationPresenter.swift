//
//  PersonnalizationPresenter.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 09/12/2020.
//

import Foundation

protocol PersonnalizationPresenterInput: class {
    var view: Personnalization? { get set }
    var interactor: PersonnalizationInteractorInput! { get set }
    var router: PersonnalizationRouterInput! { get set }
    func viewDidLoad()
    func skippingIsCalled()
    func requestUserRegistration(username: String)
}

class PersonnalizationPresenter: PersonnalizationPresenterInput {
    var view: Personnalization?
    
    var interactor: PersonnalizationInteractorInput!
    
    var router: PersonnalizationRouterInput!
    
    func viewDidLoad() {
        interactor.prepareContent()
    }
    
    func skippingIsCalled() {
        router.redirectToHome()
    }
    
    func requestUserRegistration(username: String) {
        
    }
    
}

extension PersonnalizationPresenter: PersonnalizationInteractorOutput {
    func initView() {
        
    }
}
