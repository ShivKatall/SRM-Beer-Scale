//
//  BeerStylesView.swift
//  Beer SRM Scale
//
//  Created by Cole Bratcher on 1/30/15.
//  Copyright (c) 2015 Cole Bratcher. All rights reserved.
//

import UIKit

class BeerStylesView: UIView {
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textView: UITextView!
    
    var extendedStatus: Bool = false
    var nibName: String = "BeerStylesView"
    
    // init
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
            
        // Set anything that uses the view or visable bounds.
        
        setup()
    }

    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        setup()
    }
    
    func setup() {
        view = loadViewFromNib()
        
        view.frame = bounds
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: NSBundle.mainBundle())
        let view = nib.instantiateWithOwner(self, options: nil)[0] as UIView
        
        return view
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        if extendedStatus == false {
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                self.frame = CGRect(x: self.frame.origin.x, y: self.frame.origin.y - 188, width: self.frame.size.width, height: self.frame.size.height)
            })
            self.extendedStatus = true
        } else if extendedStatus == true {
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                self.frame = CGRect(x: self.frame.origin.x, y: self.frame.origin.y + 188, width: self.frame.size.width, height: self.frame.size.height)
            })
            self.extendedStatus = false
        }
    }
    
}







