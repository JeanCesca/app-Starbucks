//
//  StarAndPoints.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 01/09/22.
//

import Foundation
import UIKit

class StarAndPoints: UIView {
    
    public let pointsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .preferredFont(forTextStyle: .callout).bold()
        label.textAlignment = .center
        return label
    }()
    
    public let starView: UIImageView = {
        let config = UIImage.SymbolConfiguration(scale: UIImage.SymbolScale.large)
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "star.fill", withConfiguration: config)
        imageView.tintColor = .systemYellow
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        addSubview(pointsLabel)
        addSubview(starView)
        
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            pointsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 2),
            pointsLabel.trailingAnchor.constraint(equalTo: starView.leadingAnchor, constant: -2),
            pointsLabel.bottomAnchor.constraint(equalTo: bottomAnchor),

            starView.trailingAnchor.constraint(equalTo: trailingAnchor),
            starView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 60, height: 16)
    }
    
}
