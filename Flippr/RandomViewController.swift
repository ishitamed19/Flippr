//
//  RandomViewController.swift
//  Flippr
//
//  Created by Ishita Mediratta on 07/04/17.
//  Copyright © 2017 Sudhir Mediratta. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {

    @IBOutlet weak var maxLabel: UITextField!
    @IBOutlet weak var minLabel: UITextField!
    @IBOutlet weak var valLabel: UILabel!
    
    @IBOutlet weak var randBtnProp: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        randBtnProp.layer.borderColor = UIColor.white.cgColor
        randBtnProp.layer.borderWidth = 1.0
        randBtnProp.layer.cornerRadius = 20
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(RandomViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
        
    }

    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func randBtnPressed(_ sender: Any) {
        let minVal = UInt32(minLabel.text!)
        let maxVal = UInt32(maxLabel.text!)
        if (maxLabel.text == "" || minLabel.text == ""){
            // create the alert
            let alert = UIAlertController(title: "Oh oh! 🙄", message: "Don't keep the field(s) empty!", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else if (minVal!>=maxVal!){
            valLabel.text = "Uh! 😋"
        }
        else{
        let randNum = (arc4random()%(maxVal!-minVal!)) + minVal!;
        valLabel.text = String(randNum)
    }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
