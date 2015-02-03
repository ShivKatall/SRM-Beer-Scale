//
//  ViewController.swift
//  Beer SRM Scale
//
//  Created by Cole Bratcher on 1/21/15.
//  Copyright (c) 2015 Cole Bratcher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentSRM : Int!
    var colorController : SRMColorController!
    var beerStylesController : BeerStylesController!
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var srmNumberLabel: UILabel!
    
    @IBOutlet weak var leftBeerStyleNib: BeerStylesView!
    @IBOutlet weak var rightBeerStyleNib: BeerStylesView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        srmNumberLabel.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.4)
        srmNumberLabel.layer.cornerRadius = 55
        srmNumberLabel.clipsToBounds = true
        
        // Left Nib Setup
        leftBeerStyleNib.button.setTitle("Ale Styles", forState: UIControlState())
        leftBeerStyleNib.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.4)
        leftBeerStyleNib.layer.cornerRadius = 20
        rightBeerStyleNib.layer.masksToBounds = true
        
        // Right Nib Setup
        rightBeerStyleNib.button.setTitle("Lager Styles", forState: UIControlState())
        rightBeerStyleNib.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.4)
        rightBeerStyleNib.layer.cornerRadius = 20
        rightBeerStyleNib.layer.masksToBounds = true
        
        
        colorController = SRMColorController()
        beerStylesController = BeerStylesController()
        currentSRM = 20
        
        refreshAllItems()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func increaseCurrentSRM() {
        if currentSRM < 40 {
            currentSRM = currentSRM + 1
            
            refreshAllItems()
        }
    }
    
    func decreaseCurrentSRM() {
        if currentSRM > 2 {
            currentSRM = currentSRM - 1
            
            refreshAllItems()
        }
    }
    
    // Refresh Methods
    
    func refreshAllItems() {
        srmNumberLabel.text = "\(currentSRM)"
        mainView.backgroundColor = colorController.getColorFromSRMString("\(currentSRM)")

        leftBeerStyleNib.textView.text = beerStylesController.makeBeerStyleStringsFromSRM(currentSRM).ales
        rightBeerStyleNib.textView.text = beerStylesController.makeBeerStyleStringsFromSRM(currentSRM).lagers
        
        //        beerTypeLabel.text = beerStylesController.makeBeerStyleStringFromSRM(currentSRM)
    }
    
    @IBAction func handlePan (recognizer: UIPanGestureRecognizer) {
        var translation = recognizer .translationInView(self.view)
        
        if translation.y > 15 {
            recognizer .setTranslation(CGPointMake(0, 0), inView: self.view)
            increaseCurrentSRM()
        }
        
        if translation.y < -15 {
            recognizer .setTranslation(CGPointMake(0, 0), inView: self.view)
            decreaseCurrentSRM()
        }
    }
    
}

