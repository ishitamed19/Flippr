//
//  ViewController.swift
//  Flippr
//
//  Created by Ishita Mediratta on 06/03/17.
//  Copyright © 2017 Sudhir Mediratta. All rights reserved.
//

import UIKit

class FlipViewController: UIViewController {


  
   
    @IBOutlet weak var labl: UILabel!
    @IBOutlet weak var coinbtn: UIButton!
    @IBOutlet weak var click: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        labl.layer.borderColor = UIColor.white.cgColor
        labl.layer.borderWidth = 1.0
        labl.layer.cornerRadius = 15
       
        
        let array = ["heads 🙃", "tails 🐉"]
        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        print(array[randomIndex])
    
    
        
    }
    
    @IBAction func coinClicked(_ sender: Any) {
        click.text = ""
        let array = ["heads 🙃", "tails 🐉"]
        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        print(array[randomIndex])
        let res = array[randomIndex]
        labl.text = res
        
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

