//
//  CellCollectionViewCell.swift
//  ZoomableImageCell
//
//  Created by Aleksandr Kurdiukov on 27.07.21.
//

import UIKit

class Cell: ZoomCell {
    
    
    //MARK: - Interface

    
    //MARK: - Properties
    
    static let id = String(describing: Cell.self)
    
    
    //MARK: - LifeCycle Methods
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //MARK: - Methods
    
    func configure() {
        self.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    

    
    func setup(with image: UIImage?) {
        self.imageView.image = image
        self.tintColor = UIColor.randomColor()
        imageView.contentMode = .scaleAspectFit
    }
}
