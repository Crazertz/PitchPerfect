//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Preston C Wertz on 4/7/15.
//  Copyright (c) 2015 P & CW Studios. All rights reserved.
//

import UIKit
import AVFoundation
class PlaySoundsViewController: UIViewController
{

    @IBAction func playSlowAudio(sender: UIButton)
    {
        
    }
    
    override func viewDidLoad()
    {
        var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")
        super.viewDidLoad()
        var filePathUrl = NSURL.fileURLWithPath(filePath!)
        var audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
        audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning()
    {
        
        super.didReceiveMemoryWarning()
    }
}
