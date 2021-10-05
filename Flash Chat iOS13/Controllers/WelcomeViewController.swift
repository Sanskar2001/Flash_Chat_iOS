//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var registerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let Title="⚡FlashChat"
        var currChar=0.0
        for ch in Title{
            
            Timer.scheduledTimer(withTimeInterval: 0.1*currChar, repeats: false) { (timer) in
                self.titleLabel.text?.append(ch)
                
                print(ch)
            }
            currChar+=1
            }
            
        }
        
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "GoToRegister", sender: self)
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "GoToLogin", sender: self)
        
    }
}
    


