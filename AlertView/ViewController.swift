//
//  ViewController.swift
//  AlertView
//
//  Created by General on 2/27/18.
//  Copyright © 2018 General. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLbl: UILabel!
    @IBOutlet weak var hitLabel: UILabel!
    

    @IBOutlet weak var StorePressed: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayLbl.text = "Press Save"
        StorePressed.layer.cornerRadius = 7
        StorePressed.layer.masksToBounds = true
        
    }
    
    @IBAction func savePressed(_ sender: UIButton) {
        let alertView = UIAlertController(title: "Save", message: "Do you really want to save?", preferredStyle: .actionSheet)
        
        let cancel = UIAlertAction(title: "Cancel", style: .destructive) { (action) in
            self.displayLbl.text = "Save Canceled"
        }
        let save = UIAlertAction(title: "Save", style: .default) { (action) in
            self.displayLbl.text = "Save Successfull"
        }
        alertView.addAction(cancel)
        alertView.addAction(save)
        
        present(alertView, animated: true, completion: nil)
    }
    
    
    @IBAction func pressStore(_ sender: UIButton) {
        
        
        let alertView = UIAlertController(title: "just store", message: "Do you really want to store?", preferredStyle: .actionSheet)
        
        let cancel = UIAlertAction(title: "Cancel action", style: .destructive) { (action) in
            self.hitLabel.text = "Store Canceled"
        }
        let save = UIAlertAction(title: "Save", style: .default) { (action) in
            self.hitLabel.text = "Store Successfull"
        }
        alertView.addAction(cancel)
        alertView.addAction(save)
        
        present(alertView, animated: true, completion: nil)
    }
}















