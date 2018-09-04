//
//  CustomCell.swift
//  DynamicCellSize
//
//  Created by Marcelo on 04/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    let messageLabel = UILabel()
    let messageBackgroundView = UIView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // ------------------
        // message background
        // ------------------
        messageBackgroundView.backgroundColor = UIColor.yellow
        messageBackgroundView.layer.cornerRadius = 8
        messageBackgroundView.layer.masksToBounds = true
        addSubview(messageBackgroundView)
        
        // set translate property of the backgroundView
        messageBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        // -----------------
        // message itself
        // -----------------
        addSubview(messageLabel)
//        messageLabel.backgroundColor = UIColor.green
        messageLabel.numberOfLines = 0
        
        // do not use ".frame" use constraints instead
        // messageLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        // set translate property of the label
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // set up constraints
        let contraints = [messageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32),
        messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
        messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32),
        messageLabel.widthAnchor.constraint(equalToConstant: 250),
        
        messageBackgroundView.topAnchor.constraint(equalTo: messageLabel.topAnchor, constant: -16),
        messageBackgroundView.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor, constant: -16),
        messageBackgroundView.bottomAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 16),
        messageBackgroundView.trailingAnchor.constraint(equalTo: messageLabel.trailingAnchor, constant: 16)
        
        
        ]
            
            
            
        // activate constraints
        NSLayoutConstraint.activate(contraints)
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
