//
//  ViewController.swift
//  TestConnectionManager
//
//  Created by DalterioRaffaele on 10/18/2017.
//  Copyright (c) 2017 DalterioRaffaele. All rights reserved.
//

import UIKit
import TestConnectionManager

class ViewController: UIViewController {

    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var responseLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let testConnectionManager = TestConnectionManager()
        
        testConnectionManager.get(url: "http://localhost:3000", callback: {err, response, body in
            if( err == nil ) {
                //print("body ----->",body)
                //print("response ----->",response?.statusCode)
                DispatchQueue.main.async {
                    self.body!.text = body as? String
                    self.responseLbl.text = String (describing: response?.statusCode)
                }
            }
            else
            {
                print("errore connessione",err)
                DispatchQueue.main.async {
                    self.body!.text = String(describing: err?.description)
                    print("ERRORE ----->", err?.description)
                }
            }
        })
        
        let data = [
            "day" : "1"
        ]
        
        testConnectionManager.post(url: "http://localhost:3000", data: data, callback: {err, response, body in
            if( err == nil ) {
                //print(body)
                DispatchQueue.main.async {
                    self.body!.text = body as? String
                    self.responseLbl.text = String (describing: response?.statusCode)
                }
            }
            else
            {
                print("errore connessione",err)
                DispatchQueue.main.async {
                    self.body!.text = String(describing: err?.description)
                    print("ERRORE ----->", err?.description)
                }
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

