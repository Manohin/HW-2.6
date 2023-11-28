//
//  DetailViewController.swift
//  HW 2.6
//
//  Created by Alexey Manokhin on 27.11.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    var article: Article?
    
    lazy var nameLabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica-Bold", size: 20)
        label.text = article?.name
        return label
    }()
    
    lazy var bodyLabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 14)
        label.text = article?.body
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    lazy var newsImage: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        view.image = UIImage(named: article?.image ?? "")
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
}

// MARK: - Private methods
private extension DetailViewController {
    func setupConstraints() {
     
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            nameLabel.heightAnchor.constraint(equalToConstant: 32),
            
            newsImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            newsImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            newsImage.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 16),
            newsImage.heightAnchor.constraint(equalToConstant: view.bounds.width - 32),
            newsImage.widthAnchor.constraint(equalToConstant: view.bounds.width - 32),
  
            bodyLabel.topAnchor.constraint(equalTo: newsImage.bottomAnchor, constant: 16),
            bodyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            bodyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            bodyLabel.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -16)
        ])
    }
    func setupViews() {
        view.applyBackgroundColor()
        newsImage.layer.cornerRadius = 20
        [nameLabel, bodyLabel, newsImage].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIsFalse()
        }
    }
}
