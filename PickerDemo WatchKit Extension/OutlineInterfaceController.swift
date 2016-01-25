//
//  FocusOutlineInterfaceController.swift
//  PickerDemo
//
//  Created by tg on 1/23/16.
//  Copyright © 2016 plusclock. All rights reserved.
//

import WatchKit
import Foundation


class OutlineInterfaceController: WKInterfaceController {
    
    @IBOutlet var picker0:WKInterfacePicker!
    @IBOutlet var picker1:WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        setupPicker(picker0)
        setupPicker(picker1)
        picker0.focus()
    }
    
    func setupPicker(picker:WKInterfacePicker) {
        // Create an array of WKPickerItems and add to picker
        let items:[WKPickerItem] = (1...20).map{
            let item = WKPickerItem()
            item.title = "\($0)"
            return item
        }
        picker.setItems(items)
    }
    
}