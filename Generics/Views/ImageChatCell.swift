//
//  ImageChatCell.swift
//  Generics
//
//  Created by alok subedi on 29/08/2021.
//

import UIKit

class ImageChatCell: UITableViewCell {
    let bubbleView = ImageChatBubbleView()
    
    var name: String? {
        didSet {
            bubbleView.nameLabel.text = name
        }
    }
    var image: UIImage? {
        didSet {
            bubbleView.messageImageView.image = image
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(bubbleView)
        bubbleView.translatesAutoresizingMaskIntoConstraints = false
        addConstraints()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            bubbleView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            bubbleView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            bubbleView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14)
        ])
    }
}
