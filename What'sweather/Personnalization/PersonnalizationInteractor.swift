//
//  PersonnalizationInteractor.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 09/12/2020.
//

import Foundation

protocol PersonnalizationInteractorOutput: class {
    func initView()
}

protocol PersonnalizationInteractorInput: class {
    var output: PersonnalizationInteractorOutput! { get set }
    func prepareContent()
}

class PersonnalizationInteractor: PersonnalizationInteractorInput {
    var output: PersonnalizationInteractorOutput!
    
    func prepareContent() {
        
    }
}
