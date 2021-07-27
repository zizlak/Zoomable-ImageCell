//
//  ZoomCell.swift
//  ZoomableImageCell
//
//  Created by Aleksandr Kurdiukov on 27.07.21.
//

import UIKit

class ZoomCell: UICollectionViewCell {
    
    
    //MARK: - Interface
    
    var imageView = UIImageView()
    
    
    //MARK: - Properties
    
    var initialLocation: CGPoint?
    
    
    //MARK: - LifeCycle Methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.isUserInteractionEnabled = true
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch))
        imageView.addGestureRecognizer(pinchGesture)
    }
    
    
    //MARK: - Methods
    
    @objc func handlePinch(sender: UIPinchGestureRecognizer) {
        self.superview?.bringSubviewToFront(self)
        self.clipsToBounds = false
        
        switch sender.state {
        case .began:
            initialLocation = imageView.center
            
        case .changed:
            imageView.transform3D = CATransform3DMakeScale(sender.scale, sender.scale, 1)
            imageView.center = sender.location(in: self)
            
        case .ended:
            UIView.animate(withDuration: 0.3) { [weak self] in
                guard let self = self else { return }
                self.imageView.transform3D = CATransform3DMakeScale(1, 1, 1)
                guard let center = self.initialLocation else { return }
                self.imageView.center = center
            }
            
        default:
            break
        }
    }
}
