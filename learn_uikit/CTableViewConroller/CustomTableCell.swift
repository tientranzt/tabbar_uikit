//
//  CustomTableCell.swift
//  learn_uikit
//
//  Created by tientran on 02/01/2021.
//

import UIKit

class CustomTableCell: UITableViewCell {
    
    let label1 : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let label2 : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    var setLabel1 : String? {
        didSet{
            self.label1.text = setLabel1
        }
    }
    
    var setLabel2 : String? {
        didSet{
            self.label2.text = setLabel2
        }
    }
    


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stack = UIStackView(arrangedSubviews: [label1, label2])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 4
        
        addSubview(stack)
        stack.centerYAnchor(inView: self)
        stack.anchor(left: self.leftAnchor ,paddingLeft: 10)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
