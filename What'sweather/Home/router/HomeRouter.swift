//
//  HomeRouter.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 16/12/2020.
//

import UIKit

protocol HomeRouterInput: class {
    var viewController: UIViewController? { get set }
    func viewSearch()
    func viewWeather()
    static func assembleModule() -> UIViewController
}

class HomeRouter: NSObject, HomeRouterInput {
    var viewController: UIViewController?
    
    func viewSearch() {
        
    }
    
    func viewWeather() {
        
    }
    
    static func assembleModule() -> UIViewController {
        return UIViewController()
    }
}
