//
//  ViewController.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 30/08/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let headerView = HomeHeaderView()
    var headerViewTopConstraint: NSLayoutConstraint?
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    //Array de Titles (ViewControllers) que está inserida dentro da StackView
    private let tiles = [
        RewardsTileViewController(),
        TileViewController(title: "Breakfast made meatless", subtitle: "Try the Beyond Meat, Cheddar & Egg Breakfast Sandwich, Vegetarian amd protein-packed.", imageName: "meatless"),
        TileViewController(title: "Uplifting our communities", subtitle: "Thanks to our partners nominations, The Starkbucks Foundation is donation $145K to more than 50 local charities.", imageName: "communities"),
        TileViewController(title: "Spend at least $15 for 50 Bonus Stars", subtitle: "Collect 50 Bonus Stars when you spend at least $15 pre-tax.", imageName: "bonus")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavBar()
        configureScrollView()
        configureViews()
    }
    
    private func configureNavBar() {
        navigationController?.navigationBar.topItem?.title = "Boa tarde, Jean ☀️"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    private func configureScrollView() {
        scrollView.delegate = self
    }
    
    private func configureViews() {
        view.addSubview(headerView)
        view.addSubview(scrollView)
        
        scrollView.addSubview(stackView)
        
        //Adicionando/varrendo cada Tile (UIViewController) para adicionar à ViewController principal
        for tile in tiles {
            addChild(tile)
            stackView.addArrangedSubview(tile.view)
            tile.didMove(toParent: self)
        }
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        headerViewTopConstraint = headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
                
        NSLayoutConstraint.activate([
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerViewTopConstraint!,
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            scrollView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 8),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),

        ])
    }
}

extension HomeViewController: UIScrollViewDelegate {
    
//    Para quebrar o headerView com Scroll
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = scrollView.contentOffset.y

        let swipingDown = y <= 0
        let shouldSnap = y > 30
        let labelHeight = headerView.greeting.frame.height + 16

        UIView.animate(withDuration: 0.3) {
            self.headerView.greeting.alpha = swipingDown ? 1.0 : 0.0
        }

        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.3, delay: 0, options: [], animations: {
            self.headerViewTopConstraint?.constant = shouldSnap ? -labelHeight : 0
            self.view.layoutIfNeeded()
        })
    }
    
}
    

    


