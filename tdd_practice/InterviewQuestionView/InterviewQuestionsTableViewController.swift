//
//  InterviewQuestionsTableViewController.swift
//  tdd_practice
//
//  Created by David Anglin on 10/22/20.
//

import UIKit

class InterviewQuestionsTableViewController: UITableViewController {
    
    // MARK: Properties
    weak var coordinator: MainCoordinator?
    internal var viewModel: InterviewQuestionsVMContract!
    
    init(viewModel: InterviewQuestionsVMContract) {
        self.viewModel = viewModel
        super.init(nibName: String(describing: type(of: self)), bundle: Bundle.main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Questions"
        tableView.tableFooterView = UIView.init(frame: .zero)
        tableView.register(UINib.init(nibName: QuestionCell.reuseIdentifier, bundle: Bundle.main), forCellReuseIdentifier: QuestionCell.reuseIdentifier)
        
        viewModel.questionsUpdated = tableView.reloadData
    }
}

// MARK: - Table view data source
extension InterviewQuestionsTableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: QuestionCell.reuseIdentifier, for: indexPath) as? QuestionCell else {
            return UITableViewCell()
        }

        let question = viewModel.questions[indexPath.row]
        cell.configure(with: question)
        return cell
    }
}
