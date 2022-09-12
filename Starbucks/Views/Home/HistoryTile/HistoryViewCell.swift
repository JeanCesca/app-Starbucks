//
//  HistoryViewCell.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 02/09/22.
//

import Foundation
import UIKit

class HistoryViewCell: UITableViewCell {
    
    static let historyViewCellId = "historyViewCellId"
    
    private let starView: UIImageView = {
        let config = UIImage.SymbolConfiguration(scale: UIImage.SymbolScale.large)
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "star", withConfiguration: config)
        imageView.tintColor = .systemYellow
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .preferredFont(forTextStyle: .headline)
        return label
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var transaction: Transaction? {
            didSet {
                guard let tx = transaction else { return }
                titleLabel.text = "\(tx.amount) Stars \(tx.type)"
                
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "MMM d"
                dateLabel.text = dateFormatter.string(from: tx.date)
            }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(starView)
        addSubview(titleLabel)
        addSubview(dateLabel)
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        
        NSLayoutConstraint.activate([
            starView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            starView.heightAnchor.constraint(equalToConstant: 36),
            starView.widthAnchor.constraint(equalToConstant: 36),
            starView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: starView.trailingAnchor, multiplier: 2),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            trailingAnchor.constraint(equalToSystemSpacingAfter: dateLabel.trailingAnchor, multiplier: 4),
            dateLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
