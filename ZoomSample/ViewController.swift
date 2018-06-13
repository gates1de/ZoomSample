//
//  ViewController.swift
//  ZoomSample
//
//  Created by Yu Kadowaki on 2018/06/13.
//  Copyright © 2018 gates1de. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func didTapJoinMeeting(_ sender: UIButton) {
        let meetingId: String = ProcessInfo.processInfo.environment["MeetingId"] ?? ""
        let url = URL(string: "zoomus://zoomus/join?confno=\(meetingId)")
        UIApplication.shared.open(url!)
    }
}
