//
//  ProductViewCell.swift
//  Simple Integration
//
//  Created by Johnny Peter on 22/08/19.
//  Copyright © 2019 Network International. All rights reserved.
//

import Foundation
import UIKit

class ProductViewCell: UICollectionViewCell {
    let productLabel = UILabel()
    let priceLabel = UILabel()
    let price = Int.random(in: 10...50)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        priceLabel.text = "AED \(price)"
        addViews()
    }
    
    private func updateWith(borderColor: UIColor) {
        contentView.addBorder(.top, color: borderColor, thickness: 5)
        contentView.addBorder(.bottom, color: borderColor, thickness: 5)
        contentView.addBorder(.left, color: borderColor, thickness: 5)
        contentView.addBorder(.right, color: borderColor, thickness: 5)
    }
    
    func updateBorder(selected: Bool) {
        let borderColor = selected
            ? UIColor(red:0.40, green:0.73, blue:0.40, alpha:1.0)
            : UIColor(red:0.98, green:0.98, blue:0.98, alpha:1.0)
        updateWith(borderColor: borderColor)
    }
    
    func addViews() {
        productLabel.font = productLabel.font.withSize(50)
        let vStack = UIStackView(arrangedSubviews: [productLabel, priceLabel])
        vStack.axis = .vertical
        vStack.alignment = .center
        contentView.addSubview(vStack)
        contentView.layer.cornerRadius = 5
        contentView.layer.masksToBounds = true
        updateBorder(selected: false)

        vStack.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor,
                     bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor,
                     padding: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20),
                     size: .zero)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}