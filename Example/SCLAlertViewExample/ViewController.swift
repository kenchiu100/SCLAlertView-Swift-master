//
//  ViewController.swift
//  SCLAlertViewExample
//
//  Created by Viktor Radchenko on 6/6/14.
//  Copyright (c) 2014 Viktor Radchenko. All rights reserved.
//

import UIKit
import SCLAlertView


let kSuccessTitle = "Congratulations"
let kErrorTitle = "Connection error"
let kNoticeTitle = "Notice"
let kWarningTitle = "Warning"
let kInfoTitle = "Info"
let kSubtitle = "You've just displayed this awesome Pop Up View"

let kDefaultAnimationDuration = 2.0

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showSuccess(sender: AnyObject) {
		let alert = SCLAlertView()
		alert.addButton("First Button", target:self, selector:Selector("firstButton"))
		alert.addButton("Second Button") {
			print("Second button tapped")
		}
        alert.showSuccess(kSuccessTitle, subTitle: kSubtitle)
    }
    
    @IBAction func showError(sender: AnyObject) {
		SCLAlertView().showError("Hold On...", subTitle:"You have not saved your Submission yet. Please save the Submission before accessing the Responses list. Blah de blah de blah, blah. Blah de blah de blah, blah.Blah de blah de blah, blah.Blah de blah de blah, blah.Blah de blah de blah, blah.Blah de blah de blah, blah.", closeButtonTitle:"OK")
//        SCLAlertView().showError(self, title: kErrorTitle, subTitle: kSubtitle)
    }
    
    @IBAction func showNotice(sender: AnyObject) {
        SCLAlertView().showNotice(kNoticeTitle, subTitle: kSubtitle)
    }
    
    @IBAction func showWarning(sender: AnyObject) {
        SCLAlertView().showWarning(kWarningTitle, subTitle: kSubtitle)
    }
    
    @IBAction func showInfo(sender: AnyObject) {
        SCLAlertView().showInfo(kInfoTitle, subTitle: kSubtitle)
    }

	@IBAction func showEdit(sender: AnyObject) {
        filter()
	}
    
    func filter (){
    let alert = SCLAlertView()
    let title = alert.addTextField("Title: Test 4")
    let school = alert.addTextField("City College of San Francisco")
    let subject = alert.addTextField("Class: Sex 1a")
        alert.showCloseButton = false
    alert.hideWhenBackgroundViewIsTapped = true
    //		alert.addButton("Show Name") {
    //			//print("Text value: \(txt.text)")
    //		}
    alert.addButton("Next", action: termPage)
    alert.showEdit(kInfoTitle, subTitle:kSubtitle)
    }
    
    func termPage(){
        let alert = SCLAlertView()
        alert.addTextField("Year taken: 2015")
        alert.addButton("Spring"){}
        alert.addButton("Summer"){}
        alert.addButton("Fall"){}
        alert.addButton("Back", action: filter)
        alert.showCloseButton = false
        alert.showEdit("Title",subTitle: "Subtitle")
    }
	
	func firstButton() {
		print("First button tapped")
	}
}