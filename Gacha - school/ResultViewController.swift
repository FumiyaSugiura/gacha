//
//  ResultViewController.swift
//  Gacha - school
//
//  Created by 杉浦文哉 on 2018/10/20.
//  Copyright © 2018年 杉浦文哉. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number : Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = Int(arc4random_uniform(10))
        
        if number == 9{
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else if number > 7{
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        }else {
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fromValue = NSNumber(value: 0)
        animation.toValue = NSNumber(value: 2*Double.pi)
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        animation.duration = 5
        animation.repeatCount = Float.infinity
        backgroundImageView.layer.add(animation ,forKey: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
