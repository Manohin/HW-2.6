//
//  MainTableViewController.swift
//  HW 2.6
//
//  Created by Alexey Manokhin on 27.11.2023.
//

import UIKit

final class MainTableViewController: UITableViewController {
    let articles = Article.getArticles()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }
}

// MARK: - Table view data source
extension MainTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        articles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: Cell.cellId,
            for: indexPath) as? Cell else { 
            return UITableViewCell()
        }
        
        let article = articles[indexPath.row]
        cell.setup(article: article, indexPath: indexPath)
        
        cell.detailButton.addAction(UIAction(handler: { [weak self] _ in
            let vc = DetailViewController()
            vc.article = self?.articles[cell.detailButton.tag]
            
            self?.navigationController?.pushViewController(vc, animated: true)
        }), for: .touchUpInside)
        return cell
    }
}

// MARK: - Private methods
private extension MainTableViewController {
    func registerCell() {
        tableView.register(Cell.self, forCellReuseIdentifier: Cell.cellId)
    }
}

