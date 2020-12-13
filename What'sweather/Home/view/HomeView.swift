//
//  HomeView.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 08/12/2020.
//

import UIKit

class HomeView: UIViewController {
    @IBOutlet weak var bckgdImg: UIImageView!
    @IBOutlet weak var greeting: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var locationTitle: UILabel!
    @IBOutlet weak var seeAllBtn: UIButton!
    @IBOutlet weak var container: UIView!
    
    static let storyboardID = "home-view"

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func seeAllBtnDidTap(_ sender: UIButton) {
    }
}

