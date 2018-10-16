//
//  RecordingViewController.swift
//  LambdaTimeline
//
//  Created by Jonathan T. Miles on 10/16/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit
import AVFoundation

class RecordingViewController: UIViewController, AVAudioPlayerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recordComment(_ sender: Any) {
        let isRecording = recorder?.isRecording ?? false
        if isRecording {
            recorder?.stop()
            if let url = recorder?.url {
                player = try! AVAudioPlayer(contentsOf: url)
                player?.delegate = self
            }
        } else {
            let format = AVAudioFormat(standardFormatWithSampleRate: 44100.0, channels: 1)!
            recorder = try! AVAudioRecorder(url: newRecordingURL(), format: format)
            recorder?.record()
        }
        updateViews()
    }
    @IBAction func playBackComment(_ sender: Any) {
    }
    @IBAction func done(_ sender: Any) {
    }
    @IBAction func cancel(_ sender: Any) {
    }
    
    // MARK: - Private Functions
    
    private func updateViews() {
        guard isViewLoaded else { return }
        let isRecording = recorder?.isRecording ?? false
        let recordButtonTitle = isRecording ? "Stop" : "Play"
        recordButton.setTitle(recordButtonTitle, for: .normal)
    }

    private func newRecordingURL() -> URL {
        let fm = FileManager.default
        let docsDir = try! fm.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        return docsDir.appendingPathComponent(UUID().uuidString).appendingPathExtension("caf")
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
    
    var recorder: AVAudioRecorder?
    var player: AVAudioPlayer?
    
    @IBOutlet weak var playBackButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
}
