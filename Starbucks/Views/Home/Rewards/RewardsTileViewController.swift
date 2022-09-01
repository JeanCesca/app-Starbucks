//
//  RewardsTileViewController.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 31/08/22.
//

import Foundation
import UIKit

class RewardsTileViewController: UIViewController {
    
    let rewardsTileView = RewardsTileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(rewardsTileView)
        configureConstraints()
    }
    
    private func configureConstraints() {

        rewardsTileView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            rewardsTileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            rewardsTileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rewardsTileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            rewardsTileView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
