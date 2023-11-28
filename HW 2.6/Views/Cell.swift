//
//  Cell.swift
//  HW 2.6
//
//  Created by Alexey Manokhin on 27.11.2023.
//

import UIKit

final class Cell: UITableViewCell {
    
    static let cellId = "cell"
    
    private let backgroundViewColor = UIColor(
        red: 0.941,
        green: 0.941,
        blue: 0.941,
        alpha: 1
    )
    
    lazy var nameLabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica-Bold", size: 16)
        return label
    }()
    
    lazy var bodyLabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 14)
        return label
    }()
    
    lazy var detailButton = {
        let button = UIButton()
        button.setTitle("Подробнее", for: .normal)
        button.backgroundColor = UIColor(
            red: 0,
            green: 0.611,
            blue: 0.355,
            alpha: 1
        )
        button.layer.cornerRadius = 20
        return button
    }()
    
    lazy var newsImage: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.clipsToBounds = true
        return view
    }()
    
    lazy var phoneButton = {
        let button = UIButton(
            primaryAction: UIAction(handler: {_ in
                print("Звоним...")
            }))
        button.setImage(
            UIImage(named: "phoneButton"), for: .normal)
        return button
    }()
    
    lazy var peopleButton = {
        let button = UIButton(primaryAction: UIAction(handler: {_ in
            print("Открываем контакт пользователя")
        }))
        button.setImage(UIImage(named: "peopleButton"), for: .normal)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = backgroundViewColor
        [
            nameLabel,
            bodyLabel,
            detailButton,
            newsImage,
            phoneButton,
            peopleButton
        ].forEach {
            contentView.addSubview($0)
            $0.translatesAutoresizingMaskIsFalse()
        }
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(article: Article, indexPath: IndexPath) {
        self.bodyLabel.text = article.body
        self.nameLabel.text = article.name
        self.newsImage.image = UIImage(named: article.image)
        self.detailButton.tag = indexPath.row
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            newsImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            newsImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            newsImage.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 16),
            newsImage.heightAnchor.constraint(equalToConstant: contentView.bounds.width - 32),
            
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            nameLabel.topAnchor.constraint(equalTo: newsImage.bottomAnchor, constant: 16),
            
            peopleButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -41),
            peopleButton.topAnchor.constraint(equalTo: newsImage.bottomAnchor, constant: 16),
            peopleButton.widthAnchor.constraint(equalToConstant: 21),
            peopleButton.heightAnchor.constraint(equalToConstant: 21),
            
            phoneButton.trailingAnchor.constraint(equalTo: peopleButton.leadingAnchor, constant: -20),
            phoneButton.topAnchor.constraint(equalTo: newsImage.bottomAnchor, constant: 16),
            phoneButton.widthAnchor.constraint(equalToConstant: 21),
            phoneButton.heightAnchor.constraint(equalToConstant: 21),
            
            bodyLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 16),
            bodyLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            bodyLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            
            detailButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
            detailButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            detailButton.topAnchor.constraint(equalTo: bodyLabel.bottomAnchor, constant: 32),
            detailButton.heightAnchor.constraint(equalToConstant: 45),
            detailButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -32)
        ])
    }
}
