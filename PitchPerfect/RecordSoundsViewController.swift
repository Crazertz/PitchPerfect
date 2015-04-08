//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Preston C Wertz on 4/5/15.
//  Copyright (c) 2015 P & CW Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var recordingInProgress: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool)
    {
        stopButton.hidden = true
        
        recordButton.enabled = true
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recordAudio(sender: UIButton)
    {
        println("in record audio")
        
        recordingInProgress.hidden = true
        
        stopButton.hidden = false
        
        recordButton.enabled = false
    }
    
    @IBAction func stopAudio(sender: UIButton)
    {
        recordingInProgress.hidden = false
    }

}

