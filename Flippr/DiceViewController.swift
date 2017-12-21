//
//  DiceViewController.swift
//  Flippr
//
//  Created by Ishita Mediratta on 07/04/17.
//  Copyright © 2017 Sudhir Mediratta. All rights reserved.
//

import UIKit
import AVFoundation

class DiceViewController: UIViewController {
    
    @IBOutlet weak var diceImg: UIImageView!
    @IBOutlet weak var rollProp: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        diceImg.image = UIImage(named: "one")
        
       rollProp.layer.borderColor = UIColor.white.cgColor
        rollProp.layer.borderWidth = 1.0
     rollProp.layer.cornerRadius = 20
      
   
}

    @IBAction func rollBtnPressed(_ sender: Any) {
      let randVal = arc4random_uniform(6) + 1
        switch randVal {
        case 1:
            diceImg.image = UIImage(named: "one")
        case 2:
            diceImg.image = UIImage(named: "two")
        case 3:
            diceImg.image = UIImage(named: "three")
        case 4:
            diceImg.image = UIImage(named: "four")
        case 5:
            diceImg.image = UIImage(named: "five")
        default:
            diceImg.image = UIImage(named: "six")
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
