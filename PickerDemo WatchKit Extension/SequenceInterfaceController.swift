//
//  SequenceInterfaceController.swift
//  PickerDemo
//
//  Created by tg on 1/23/16.
//  Copyright © 2016 plusclock. All rights reserved.
//

import WatchKit
import Foundation


class SequenceInterfaceController: WKInterfaceController {
    
    @IBOutlet var picker:WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        setupPicker()
    }

    func setupPicker() {
        // Create an array of WKPickerItems and add to picker
        let items:[WKPickerItem] = (1...20).map{
            let item = WKPickerItem()
            item.contentImage = WKImage(imageName: "num_\($0)")
            return item
        }
        picker.setItems(items)
    }
    
}