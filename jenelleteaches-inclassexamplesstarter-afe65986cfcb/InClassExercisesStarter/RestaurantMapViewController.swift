//
//  RestaurantMapViewController.swift
//  InClassExercisesStarter
//
//  Created by parrot on 2018-11-22.
//  Copyright © 2018 room1. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import MapKit

class RestaurantMapViewController: UIViewController {

    
    //https://opentable.herokuapp.com/api/restaurants?city=Toronto&per_page=5
    
    
    // MARK: Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let URL = "https://opentable.herokuapp.com/api/restaurants?city=Toronto&per_page=5"
        
        // ALAMOFIRE function: get the data from the website
        Alamofire.request(URL, method: .get, parameters: nil).responseJSON {
            (response) in
            
            // -- put your code below this line
            
            if (response.result.isSuccess) {
                print("awesome, i got a response from the website!")
                print("Response from webiste: " )
                print(response.data)
                
                do {
                    let json = try JSON(data:response.data!)
                    let json2 = json["restaurants"]
                    
                    print("name in C: \(json2["name"])")
                    print(json2)

                    //print(json)
                    
                    // PARSING: grab the latitude and longitude
                    //print(json["latitude"])
                    //print(json["longitude"])
                    
                    print("------")
                    
                    // EXAMPLE:  Get the temperature
                    
                    //OPTIOAL: You could write the code like this:
                    // let currently = json["currently"]
                    // let temp = currently["temperature"]
                    
                    // or, you could write it like this (in one line)
                    let name = json2["name"]
                    let lang = json["lng"]
                    let lat = json["lat"]


                    
                    print("name in json2: \(json2["name"])")
                    
                 
                    //let flags = json["flags"]["sources"].array!
                    
                    
                    // OPTION 1: Use a foreach loop to iterate through the
                    // array.  This will output:
                    // nearest precip, ecpa, cnc, gfs, hrrr, icon... etc...
                  
                    

                    
                   
                    
                    // OPTION 2: Auomatically loop through the data
                    
                    for m in name {
                       
                        print("The sun rises at: \(m)")
                    }
                    
                    
                    
                    
                    
                }
                catch {
                    print ("Error while parsing JSON response")
                }
                
            }
            
        
        
        
        
        print("loaded the map screen")
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    // MARK: Actions

    @IBAction func zoomInPressed(_ sender: Any) {
        
        print("zoom in!")
        
        // HINT: Check MapExamples/ViewController.swift
    }
    
    @IBAction func zoomOutPressed(_ sender: Any) {
        // zoom out
        print("zoom out!")
        
        // HINT: Check MapExamples/ViewController.swift
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
