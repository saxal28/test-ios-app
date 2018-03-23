//
//  ViewController.swift
//  Alan's Monster Test App
//
//  Created by alan on 3/21/18.
//  Copyright © 2018 alan. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, TodoHomeVCDelegate {

    var textToChange: String = ""
    var noteCount: Int = 0
    
    //=====================================================
    //MARK: IBOutlets
    //=====================================================
    
    
    @IBOutlet weak var LabelOne: UILabel!
    @IBOutlet weak var LabelTwo: UILabel!
    
    
    //=====================================================
    //MARK: Delegate Methods
    //=====================================================
    
    
    func getNoteCount(count: Int) {
        noteCount = count
        if count == 1 {
            LabelOne.text = "You Have \(noteCount) Note"
        } else {
            LabelOne.text = "You Have \(noteCount) Notes"
        }
    }
    
    
    //=====================================================
    //MARK: System Methods
    //=====================================================
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TodoHomeVC {
            destination.delegate = self
        }
    }


}

