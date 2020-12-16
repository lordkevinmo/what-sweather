//
//  HomeInteractor.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 16/12/2020.
//

import Foundation

protocol HomeInteractorOutput: class {
    func initHome(for: String)
}

protocol HomeInteractorInput: class {
    var output: HomeInteractorOutput! { get set }
    func viewDidLoad()
}

class HomeInteractor: HomeInteractorInput {
    var output: HomeInteractorOutput!
    
    func viewDidLoad() {
        
    }
}
