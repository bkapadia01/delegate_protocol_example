//
//  InternViewController.swift
//  DelegateProtocolProject
//
//  Created by Bhavin Kapadia on 2023-02-21.
//

import UIKit

class InternViewController: UIViewController {
    
    @IBOutlet weak var updateImage: UIImageView!
    @IBOutlet weak var clickStartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func clickStartButton(_ sender: UIButton) {
        let pawSelection = storyboard?.instantiateViewController(withIdentifier: "BossVC") as! BossViewController
        pawSelection.selectionDelegate = self
        present(pawSelection, animated: true)
    }
}

extension InternViewController: PawSelectionDelegate {
    func didSelectPaw(image: UIImage, color: UIColor) {
        updateImage.image = image
        view.backgroundColor = color
        
    }
    
    
}

