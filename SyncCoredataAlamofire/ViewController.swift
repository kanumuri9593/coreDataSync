//
//  ViewController.swift
//  SyncCoredataAlamofire
//
//  Created by Yeswanth varma Kanumuri on 6/14/16.
//  Copyright © 2016 Yeswanth varma Kanumuri. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import Sync
import DATAStack

class ViewController: UIViewController {
    
    let dataStack = DATAStack(modelName: "SyncCoredataAlamofire")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //getevents()
//        print("test,test")
   //    getlocatios()
        
      print(readjson("events"))
        
//        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
//            .responseJSON { response in
//                print(response.request)  // original URL request
//                print(response.response) // URL response
//                print(response.data)     // server data
//                print(response.result)   // result of response serialization
//                
//                if let JSON = response.result.value {
//                    print("JSON: \(JSON)")
//                }
//        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getlocatios () {
        
        
        
        
        
        
//        if let dpath = NSBundle.mainBundle().pathForResource("dropofflocation", ofType: "json") {
//            do {
//                let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: dpath), options: NSDataReadingOptions.DataReadingMappedIfSafe);
//                let jsonObj = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as? NSDictionary
//                
//               
//                
//                if jsonObj != JSON.null {
//                    print("jsonData:\(jsonObj)")
//                    
//                    
//                    Sync.changes(jsonObj as! [[String:AnyObject]], inEntityNamed: "", dataStack: dataStack, completion: { (error) in
//                        print("done")
//                    })
//                    
//                    
//                } else {
//                    print("could not get json from file, make sure that file contains valid json.")
//                }
//            } catch let error as NSError {
//                print(error.localizedDescription)
//            }
//        } else {
//            print("Invalid filename/path.")
//        }
    }
    
    func readjson(fileName: String) -> NSData{
        
        let path = NSBundle.mainBundle().pathForResource(fileName, ofType: "json")
        let jsonData = NSData(contentsOfMappedFile: path!)
        
        return jsonData!
    }

    func fetch() {
      
               
    
        
    }

    
    
    func getevents () {
        if let path = NSBundle.mainBundle().pathForResource("events", ofType: "json") {
            do {
                let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: path), options: NSDataReadingOptions.DataReadingMappedIfSafe)
                let json = try! NSJSONSerialization.JSONObjectWithData(data, options: []) as! [[String: AnyObject]]
                
                
                Sync.changes(
                    json,
                    inEntityNamed: "Calendar",
                    dataStack: dataStack) { error in
                        // New objects have been inserted
                        
                        print("coredata added")
                        // Existing objects have been updated
                        // And not found objects have been deleted
                }
                
                print(json)
                
                let jsonObj = JSON(data: data, options: .AllowFragments, error: nil)
                if jsonObj != JSON.null {
                    print("jsonData:\(jsonObj)")
                    
                 
                    
                } else {
                    print("could not get json from file, make sure that file contains valid json.")
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        } else {
            print("Invalid filename/path.")
        }
    }
    
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

