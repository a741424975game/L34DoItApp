//
//  NewDoItViewController.swift
//  DoItApp
//
//  Created by GuanZhipeng on 16/3/25.
//  Copyright © 2016年 Dali Lin. All rights reserved.
//

import UIKit
import CoreData

class NewDoItViewController: UIViewController {

    var context:NSManagedObjectContext!
    
    @IBOutlet weak var titleTF: UITextField!
    
    @IBOutlet weak var contentTF: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        contentTF.selectAll(contentTF)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func saveBtnPressed(sender: AnyObject) {
        let newDoIt :AnyObject = NSEntityDescription.insertNewObjectForEntityForName("DoIt", inManagedObjectContext: context)
        newDoIt.setValue(titleTF.text, forKey: "title")
        newDoIt.setValue(contentTF.text, forKey: "content")
        do {
            try context.save()
            dismissViewControllerAnimated(true, completion: nil)
        }catch {
            print("Save ERROR") //可以弹窗提示
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
