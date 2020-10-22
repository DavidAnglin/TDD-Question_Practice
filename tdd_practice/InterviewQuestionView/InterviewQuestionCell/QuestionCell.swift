//
//  QuestionCell.swift
//  tdd_practice
//
//  Created by David Anglin on 10/22/20.
//

import UIKit

class QuestionCell: UITableViewCell {
    static var reuseIdentifier: String {
        return "QuestionCell"
    }
    
    // MARK: IBOutlet
    @IBOutlet weak var questionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(with question: Question) {
        questionLabel.text = question.question
    }
}
