//
//  StarRewardsView.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 01/09/22.
//

import Foundation
import UIKit

class StarRewardsView: UIView {

    public let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: -16)
        return stackView
    }()

    public let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .preferredFont(forTextStyle: .title3).bold()
        label.text = "Rewards you can get with Stars"
        return label
    }()

    struct Reward {
        let numberOfPoints: String
        let description: String
    }

    var rewards: [Reward] =
        [Reward(numberOfPoints: "25", description: "Customize your drink"),
         Reward(numberOfPoints: "50", description: "Brewed hot coffee, bakery item or hot tea"),
         Reward(numberOfPoints: "150", description: "Handcrafted drink, hot breakfast or parfait"),
         Reward(numberOfPoints: "250", description: "Lunch sandwich or protein box"),
         Reward(numberOfPoints: "400", description: "Select merchandise or at-home coffee"),
    ]

    override init(frame: CGRect) {
        super.init(frame: .zero)

        layer.cornerRadius = 10
        backgroundColor = .secondarySystemFill

        addSubview(stackView)
        stackView.addArrangedSubview(label)

        configureConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureConstraints() {
        for reward in rewards {
            stackView.addArrangedSubview(StarRewardsRow(numberOfPoints: reward.numberOfPoints, description: reward.description))
        }

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}






