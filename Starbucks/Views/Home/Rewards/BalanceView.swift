//
//  BalanceView.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 31/08/22.
//

import Foundation
import UIKit

class BalanceView: UIView {
    
    public let pointsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .preferredFont(forTextStyle: .largeTitle).bold()
        label.text = "12"
        return label
    }()
    
    private let starView: UIImageView = {
        let config = UIImage.SymbolConfiguration(scale: UIImage.SymbolScale.large)
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "star.fill", withConfiguration: config)
        imageView.tintColor = .systemYellow
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let starBalanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .preferredFont(forTextStyle: .footnote).bold()
        label.textColor = .label
        label.text = "Star balance"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
            
        addSubview(pointsLabel)
        addSubview(starView)
        addSubview(starBalanceLabel)
        
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            pointsLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            pointsLabel.topAnchor.constraint(equalTo: topAnchor),
            
            starView.leadingAnchor.constraint(equalTo: pointsLabel.trailingAnchor, constant: -2),
            starView.centerYAnchor.constraint(equalTo: pointsLabel.centerYAnchor, constant: 4),
            starView.heightAnchor.constraint(equalToConstant: 15),
            
            starBalanceLabel.leadingAnchor.constraint(equalTo: pointsLabel.leadingAnchor, constant: 0),
            starBalanceLabel.topAnchor.constraint(equalTo: pointsLabel.bottomAnchor),
            starBalanceLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            starBalanceLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
        
    }
    
}
