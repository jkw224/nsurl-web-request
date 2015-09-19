//
//  ViewController.swift
//  web-request-test
//
//  Created by Jonathan Wood on 9/18/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://swapi.co/api/people/1"
        let url = NSURL(string: urlString)!
        let session = NSURLSession.sharedSession()
        
        session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            
            if let responseData = data {
                
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments)
                    
                    if let dict = json as? Dictionary<String, AnyObject> {
                        if let name = dict["name"] as? String, let height = dict["height"] as? String, let mass = dict["mass"] as? String, let hair = dict["hair_color"] as? String {
                            
                            let character = SWPerson(name: name, height: height, mass: mass, hair: hair)
                            
                            print(character.name)
                            print(character.height)
                            print(character.mass)
                            print(character.hair)
                            
                            if let films = dict["films"] as? [String] {
                                for film in films {
                                    print(film)
                                }
                            }
                        }
                    }
                } catch {
                    print("Could not serialize")
                }
            }
        }.resume()
    }


}

