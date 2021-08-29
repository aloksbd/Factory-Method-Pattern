//
//  ImageChatBubbleView.swift
//  Generics
//
//  Created by alok subedi on 29/08/2021.
//

import UIKit

class ImageChatBubbleView: UIView {
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.numberOfLines = 0
        return label
    }()
    
    let messageImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .magenta
        view.layer.cornerRadius = 10
        return view
    }()
    
    let bubbleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 20
        return view
    }()
    
    convenience init() {
        self.init(frame: .zero)
        
        addViews()
    }
    
    private func addViews() {
        addSubview(bubbleView)
        [nameLabel, messageImageView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            bubbleView.addSubview($0)
        }
        addConstraints()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            bubbleView.topAnchor.constraint(equalTo: topAnchor),
            bubbleView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bubbleView.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
            bubbleView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: bubbleView.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: bubbleView.leadingAnchor, constant: 14),
            
            messageImageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            messageImageView.leadingAnchor.constraint(equalTo: bubbleView.leadingAnchor, constant: 8),
            messageImageView.trailingAnchor.constraint(equalTo: bubbleView.trailingAnchor, constant: -8),
            messageImageView.bottomAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: -8),
            
            messageImageView.widthAnchor.constraint(equalToConstant: 250 - 16),
            messageImageView.heightAnchor.constraint(equalTo: messageImageView.widthAnchor, multiplier: 3/2)
        ])
    }
}
