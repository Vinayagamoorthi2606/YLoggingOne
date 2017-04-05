//
//  UIBookingTypeIconView.swift
//  UIBookingTypeIconView
//
//  Created by Apple on 31/03/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit
//import SwiftHEXColors

enum BookingType : Int
{
    case type_m2m = 2
    case type_oneway   = 3
    case type_standard = 1
}

enum BookingTypeColor : String
{
    case color_m2m = "bluedark"
    case color_oneway   = "green"
    case color_standard = "orangedark"
}

enum BookingTypeIcon : String
{   
    case icon_m2m = "booking-type-m2m"
    case icon_oneway   = "booking-type-one-way"
    case icon_standard = "booking-type-standard"
}

 @IBDesignable public class UIBookingTypeIconView : UIView {
    
    @IBOutlet var view: UIView!
    
    @IBOutlet weak var viewBg: UIView!
    
    @IBOutlet weak var ivIcon: UIImageView!
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        Bundle.main.loadNibNamed("UIBookingTypeIconView",  owner: self, options: nil)
        
        self.backgroundColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.0)
        
        self.addSubview(view)
        view.frame = self.bounds
        
        viewBg.layer.cornerRadius = self.bounds.width / 2.0
        viewBg.layer.masksToBounds = true
        
    }
    
    func setBookType(type : BookingType)
    {
        switch type {
        case .type_standard:
                    viewBg.backgroundColor = getColor(strColor: BookingTypeColor.color_standard.rawValue)
                    ivIcon.image = UIImage(named:BookingTypeIcon.icon_standard.rawValue)
            break
        case .type_oneway:
                    viewBg.backgroundColor = getColor(strColor: BookingTypeColor.color_oneway.rawValue)
                    ivIcon.image = UIImage(named:BookingTypeIcon.icon_oneway.rawValue)
            break
        case .type_m2m:
                    viewBg.backgroundColor = getColor(strColor: BookingTypeColor.color_m2m.rawValue)
                    ivIcon.image = UIImage(named:BookingTypeIcon.icon_m2m.rawValue)
            break
        default:
                    viewBg.backgroundColor = getColor(strColor: BookingTypeColor.color_standard.rawValue)
                    ivIcon.image = UIImage(named:BookingTypeIcon.icon_standard.rawValue)
            break
        }

    }
    
    func getColor(strColor: String) -> UIColor
    {
        let tempColor : UIColor = UIColor.yellow
        
        if( strColor == "bluedark")
        {
           //   tempColor = UIColor(hexString: "#043654")
        }
        else if( strColor == "green")
        {
            //  tempColor = UIColor(hexString: "#00AE4C")
        }
        else if( strColor == "orangedark")
        {
            //  tempColor = UIColor(hexString: "#E16509")
        }

        return tempColor
        
    }
    
}
