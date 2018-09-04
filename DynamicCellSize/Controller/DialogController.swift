//
//  DialogController.swift
//  DynamicCellSize
//
//  Created by Marcelo on 02/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class DialogController: UITableViewController {
    
    // MARK : - Properties
    private let cellIdentifier = "Cell"
    private var messages = [String]()
    

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMessages()
        registerTableViewCell()
        print("--- view did load")
    }

    // MARK: - TableView Delegate
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! CustomCell
        cell.messageLabel.text = messages[indexPath.row]
        return cell
    }
    
    // MARK: - Helpers
    private func loadMessages() {
        messages.append("Olá! Somos a companhia alegre de teatro e estamos em sua cidade!")
        messages.append("Estamos trazendo um lindo espetáculo chamado MOMIS que retrata o dia dia do ultimo imperador romano. Com pitadas de humor e drama é um espetáculo imperdível!")
        messages.append("Esperamos você :)")
    }
    private func registerTableViewCell() {
        tableView.register(CustomCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
}
