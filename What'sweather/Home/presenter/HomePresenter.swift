//
//  HomePresenter.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 16/12/2020.
//

import Foundation

protocol HomePresenterInput: class {
    var view: HomeInput? { get set }
    var interactor: HomeInteractorInput! { get set }
    var router: HomeRouterInput! { get set }
    func viewDidLoad()
}

class HomePresenter: HomePresenterInput {
    var view: HomeInput?
    
    var interactor: HomeInteractorInput!
    
    var router: HomeRouterInput!
    
    func viewDidLoad() {
        
    }
}

extension HomePresenter: HomeInteractorOutput {
    func initHome(for: String) {
        
    }
}
