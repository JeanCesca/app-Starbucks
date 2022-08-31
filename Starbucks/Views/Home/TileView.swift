//
//  TileView.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 31/08/22.
//

import Foundation
import UIKit

class TileView: UIViewController {
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        view.addSubview(label)
        configureConstraints()
    }
    
    init(text: String) {
        super.init(nibName: nil, bundle: nil)
        label.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            view.heightAnchor.constraint(equalToConstant: 300)
        
        ])
        
    }
    
}
