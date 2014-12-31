//
//  ViewController.swift
//  UofA
//
//  Created by Edward Stamps on 12/10/14.
//  Copyright (c) 2014 CheckList. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer:AVAudioPlayer!

    @IBOutlet weak var BearDownPlay: UIButton!
    @IBOutlet weak var BearDownAZ: UILabel!
    
    @IBOutlet weak var StopPlay: UIButton!
    @IBAction func StopPlay(sender: UIButton) {BearDownAZ.hidden=true;StopPlay.hidden=true; if (audioPlayer.playing) {audioPlayer.stop()}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if var filePath = NSBundle.mainBundle().pathForResource("BD_AZ1", ofType: "mp3"){
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer=AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
            
        } else{
            
            println("The filePath is empty")}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BearDownPlay(sender: UIButton) {
        
        audioPlayer.play()
        audioPlayer.numberOfLoops = -1
        BearDownAZ.hidden=false
        StopPlay.hidden=false
    }

  

}