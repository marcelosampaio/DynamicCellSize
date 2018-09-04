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
    private var messages = [Message]()
    

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
        let message = messages[indexPath.row]
        cell.messageLabel.text = message.text
        cell.isLeftSide = message.isLeftSide
        return cell
    }
    
    // MARK: - Helpers
    private func loadMessages() {

        messages.append(Message.init(text: "Olá! Somos a companhia alegre de teatro e estamos em sua cidade!", isLeftSide: true))
        messages.append(Message.init(text: "Estamos trazendo um lindo espetáculo chamado MOMIS que retrata o dia dia do ultimo imperador romano. Com pitadas de humor e drama é um espetáculo imperdível!", isLeftSide: true))
        messages.append(Message.init(text: "Esperamos você :)", isLeftSide: true))
        messages.append(Message.init(text: "Venha!", isLeftSide: true))
        messages.append(Message.init(text: "Que legal!", isLeftSide: false))
        messages.append(Message.init(text: "Poderia me informar quando começa a temporada aqui em Curitiba?", isLeftSide: false))
        messages.append(Message.init(text: "Estaremos em cartaz de 14-21 Outubro, teatro Arena 19:00h todos os dias!", isLeftSide: true))
        messages.append(Message.init(text: "Vou avisar lá na escola e ver com minha professora se podemos nos organizar em um passeio para todos assistirem a peça :)", isLeftSide: false))
    }
    
    private func registerTableViewCell() {
        tableView.register(CustomCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
}
