//
//  ListFilmsViewCell.swift
//  ListFilms
//
//  Created by Vlad Panchenko on 01.09.2022.
//

import UIKit

class ListFilmsViewCell: UITableViewCell {

    @IBOutlet private var titleFilm: UILabel!
    @IBOutlet private var yearFilm: UILabel!

    static var cellReuseIdentifier: String {
         return String(describing: Self.self)
     }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    func configure(model: Film) {
        titleFilm.text = model.title ?? "12"
        yearFilm.text = String(model.year)
    }
    
}
