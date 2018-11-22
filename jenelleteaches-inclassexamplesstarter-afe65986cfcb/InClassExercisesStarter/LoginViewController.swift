//
//  LoginViewController.swift
//  InClassExercisesStarter
//
//  Created by parrot on 2018-11-22.
//  Copyright © 2018 room1. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: Actions
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        print("Pressed login button")
        
        // HINT:  The name of the segue that goes to the next screen is: segueLoginSignup
        // You can check the name by going to Main.storyboard > clicking on segue > looking at Attributes Inspector
    }
    
    
    @IBAction func signupButtonPressed(_ sender: Any) {
        print("pressed signup button")

        // HINT:  The name of the segue that goes to the next screen is: segueLoginSignup
        // You can check the name by going to Main.storyboard > clicking on segue > looking at Attributes Inspector
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
