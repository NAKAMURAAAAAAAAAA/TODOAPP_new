//
//  Delete.swift
//  TODOAPP
//
//  Created by Kan Nakamura on 2019/11/16.
//  Copyright © 2019 Kan Nakamura. All rights reserved.
//

import UIKit

class Delete: ViewController {
    @IBAction func DeleteButton(_ sender: Any) {
        (sender as AnyObject).titleLabel?.textColor = UIColor.red
        print((sender as AnyObject).titleLabel?.textColor)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
