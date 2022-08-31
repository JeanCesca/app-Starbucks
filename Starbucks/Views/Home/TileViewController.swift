//
//  TileViewController.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 31/08/22.
//

import Foundation
import UIKit

class TileViewController: UIViewController {
    
    let tileView = TileView()
    
    init(title: String, subtitle: String, imageName: String) {
        super.init(nibName: nil, bundle: nil)
        
        tileView.titleLabel.text = title
        tileView.subtitleLabel.text = subtitle
        tileView.imageView.image = UIImage(named: imageName)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tileView)
        configureConstraints()
    }
    
    private func configureConstraints() {
        
        tileView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tileView.topAnchor.constraint(equalTo: view.topAnchor),
            tileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tileView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        
    }
    
}
