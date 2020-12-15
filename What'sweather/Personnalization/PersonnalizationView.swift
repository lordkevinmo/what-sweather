//
//  PersonnalizationView.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 08/12/2020.
//

import UIKit

protocol Personnalization: class {
    func error(with: String)
}

class PersonnalizationView: UIViewController {
    @IBOutlet weak var skipBtn: UIButton!
    @IBOutlet weak var landingImg: UIImageView!
    @IBOutlet weak var welcomeMsg: UILabel!
    @IBOutlet weak var nameTxtfield: UITextField!
    @IBOutlet weak var continueBtn: UIButton!
    
    static let storyboardID = "personnalization-view"
    
    var presenter: PersonnalizationPresenterInput!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func continueBtnDidTap(_ sender: UIButton) {
    }
    
    @IBAction func skipBtnDidTap(_ sender: UIButton) {
    }
}

extension PersonnalizationView: Personnalization {
    func error(with: String) {
        
    }
}
