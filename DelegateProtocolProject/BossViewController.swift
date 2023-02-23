//
//  BossViewController.swift
//  DelegateProtocolProject
//
//  Created by Bhavin Kapadia on 2023-02-21.
//

import UIKit

protocol PawSelectionDelegate {
    func didSelectPaw(image: UIImage, color: UIColor)
}

class BossViewController: UIViewController {
    
    var selectionDelegate: PawSelectionDelegate!
    
    @IBOutlet weak var catPawImage: UIImageView!
    @IBOutlet weak var dogPawImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        let tapCatPaw = UITapGestureRecognizer(target: self, action: #selector(self.catPawImageTapped))
        catPawImage.addGestureRecognizer(tapCatPaw)
        catPawImage.isUserInteractionEnabled = true
        
        let tapDogPaw = UITapGestureRecognizer(target: self, action: #selector(self.dogPawImageTapped))
        dogPawImage.addGestureRecognizer(tapDogPaw)
        dogPawImage.isUserInteractionEnabled = true
        
    }
    
    
    @objc func catPawImageTapped(sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            selectionDelegate.didSelectPaw(image: UIImage(named: "catImage")!, color: .brown)
        }
        dismiss(animated: true)
    }
    
    
    @objc func dogPawImageTapped(sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            selectionDelegate.didSelectPaw(image: UIImage(named: "dogImage")!, color: .yellow)
        }
        dismiss(animated: true)
    }
    
    
    
}
