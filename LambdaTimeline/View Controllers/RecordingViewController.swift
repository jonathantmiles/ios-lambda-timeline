//
//  RecordingViewController.swift
//  LambdaTimeline
//
//  Created by Jonathan T. Miles on 10/16/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class RecordingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recordComment(_ sender: Any) {
    }
    @IBAction func playBackComment(_ sender: Any) {
    }
    @IBAction func done(_ sender: Any) {
    }
    @IBAction func cancel(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Properties
    @IBOutlet weak var playBackButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
}
