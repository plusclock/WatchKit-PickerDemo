//
//  MenuRowController.swift
//  PickerDemo
//
//  Created by tg on 1/23/16.
//  Copyright © 2016 plusclock. All rights reserved.
//

import WatchKit

class MenuRowController: NSObject {
    
    @IBOutlet var titleLabel:WKInterfaceLabel!
    
    func showItem( title:String ) {
        titleLabel.setText(title)
    }
}