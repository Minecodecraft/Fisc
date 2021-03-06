//
//  MCStockBannerView.swift
//  Fisc
//
//  Created by Minecode on 2017/9/14.
//  Copyright © 2017年 Minecode. All rights reserved.
//

import UIKit

class MCStockBannerView: UIView {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var updown: UILabel!
    
    var stock: MCBannerStock?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        draw(self.frame)
    }
    
    //    override func draw(_ rect: CGRect) {
    //        setupUI()
    //    }
    
    func setupUI() {
        
    }
    
    override func awakeFromNib() {
        setupUI()
    }
    
    func updateStockInfo(name: String, price: String, updown: String) {
        // name
        self.name.text = name
        // price
        if let doubleVal = Double(price) {
            self.price.text = String(format: "%.2lf", doubleVal)
        } else {
            self.price.text = price
        }
        // updown
        if let doubleVal = Double(updown) {
            self.updown.text = String(format: "%.2lf", doubleVal)
            if doubleVal > 0  {self.backgroundColor = UIColor.init(r: 233, g: 78, b: 38)}
            else {self.backgroundColor = UIColor.init(r: 72, g: 135, b: 92)}
        } else {
            self.updown.text = updown
        }
    }

}
