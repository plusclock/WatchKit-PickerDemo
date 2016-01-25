//
//  InterfaceController.swift
//  PickerDemo WatchKit Extension
//
//  Created by tg on 1/23/16.
//  Copyright © 2016 plusclock. All rights reserved.
//

import WatchKit
import Foundation


class MenuInterfaceController: WKInterfaceController {
    
    let kRowId              = "Row"
    let kItemKeyTitle       = "title"
    let kItemKeyClassPrefix = "prefix"
    var items:[Dictionary<String,String>]!

    @IBOutlet var table:WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        // Array of Items in Table with Title and corresponding InterfaceController ID
        items   = [
            [
                kItemKeyTitle: "List",
                kItemKeyClassPrefix: "ListIC"
            ],
            [
                kItemKeyTitle: "Stack",
                kItemKeyClassPrefix: "StackIC"
            ],
            [
                kItemKeyTitle: "Sequence",
                kItemKeyClassPrefix: "SequenceIC"
            ],
            [
                kItemKeyTitle: "Outline",
                kItemKeyClassPrefix: "OutlineIC"
            ],
            [
                kItemKeyTitle: "Caption",
                kItemKeyClassPrefix: "CaptionIC"
            ],
            [
                kItemKeyTitle: "Indicator",
                kItemKeyClassPrefix: "IndicatorIC"
            ]
        ]
        loadTableData()
    }
    
    func loadTableData() {
        // Setup table
        table.setNumberOfRows(items.count, withRowType: kRowId )
        for (index,item) in items.enumerate() {
            let row = table.rowControllerAtIndex(index) as! MenuRowController
            row.showItem( item[kItemKeyTitle]!)
        }
    }
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        // Get selected row and push controller
        let item = items[rowIndex]
        let identifier = item[kItemKeyClassPrefix]!
        self.pushControllerWithName(identifier, context: nil)
    }

}
