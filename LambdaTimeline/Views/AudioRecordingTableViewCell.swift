//
//  AudioRecordingTableViewCell.swift
//  LambdaTimeline
//
//  Created by Jonathan T. Miles on 10/16/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AudioRecordingTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func playAudioRecording(_ sender: Any) {
    }
    
    @IBOutlet weak var recordingName: UILabel!
    
}
