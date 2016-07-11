//
//  ProfileVC.swift
//  VCAbstraction
//
//  Created by Fahied on 11/07/2016.
//  Copyright © 2016 OLX PK. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    var person : String = ""
    var didTapClose: () -> () = {}
    
    @IBAction func closeThisVC(sender: AnyObject) {
        didTapClose()
    }
}
