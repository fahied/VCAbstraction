//
//  DetailVC.swift
//  VCAbstraction
//
//  Created by Fahied on 11/07/2016.
//  Copyright © 2016 OLX PK. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    
    @IBOutlet weak var label: UILabel? {
        didSet {
            label?.text = episode?.title
        }
    }

    
    var episode: Episode?
    
}
