//
//  StarRewardsRow.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 01/09/22.
//

import Foundation
import UIKit

class StarRewardsRow: UIView {
    
    let starAndPoints = StarAndPoints()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .preferredFont(forTextStyle: .footnote)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        return label
    }()
    
    init(numberOfPoints: String, description: String) {
        starAndPoints.pointsLabel.text = numberOfPoints
        descriptionLabel.text = description
        
        super.init(frame: .zero)
            
        addSubview(starAndPoints)
        addSubview(descriptionLabel)
        
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        
        starAndPoints.translatesAutoresizingMaskIntoConstraints = false
        starAndPoints.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        NSLayoutConstraint.activate([
            starAndPoints.topAnchor.constraint(equalTo: topAnchor),
            starAndPoints.bottomAnchor.constraint(equalTo: bottomAnchor),
            starAndPoints.leadingAnchor.constraint(equalTo: leadingAnchor),

            descriptionLabel.topAnchor.constraint(equalTo: topAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: starAndPoints.trailingAnchor, constant: 4),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
