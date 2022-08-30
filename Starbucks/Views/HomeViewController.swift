//
//  ViewController.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 30/08/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavBar()
    }
    
    private func configureNavBar() {
        navigationController?.navigationBar.topItem?.title = "Boa tarde, Jean ☀️"
        navigationController?.navigationBar.prefersLargeTitles = true

    }


}

