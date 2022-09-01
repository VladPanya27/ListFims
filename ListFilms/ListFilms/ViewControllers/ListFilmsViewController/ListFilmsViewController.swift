//
//  ViewController.swift
//  ListFilms
//
//  Created by Vlad Panchenko on 01.09.2022.
//

import UIKit

class ListFilmsViewController: UIViewController {

    @IBOutlet private var titleField: UITextField!
    @IBOutlet private var yearField: UITextField!
    @IBOutlet private var tableView: UITableView!

    private var films:[Film] = [Film]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func addAction(_ sender: Any) {
        guard let title = titleField.text, let year = Int(yearField.text ?? "0") else { return }
        let film = Film(title: title, year: year)
        films.append(film)
        tableView.reloadData()
    }

}

extension ListFilmsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        films.unique.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier:
                                            ListFilmsViewCell.cellReuseIdentifier, for: indexPath)
                                            as? ListFilmsViewCell else { return UITableViewCell() }

        
        let films = films.unique[indexPath.row]
        cell.configure(model: films)
        return cell
    }

}
