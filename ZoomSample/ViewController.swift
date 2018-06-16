//
//  ViewController.swift
//  ZoomSample
//
//  Created by Yu Kadowaki on 2018/06/13.
//  Copyright © 2018 gates1de. All rights reserved.
//

import UIKit
import MobileRTC

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func didTapJoinMeeting(_ sender: UIButton) {
        // Using browser (Safari or WebView)
        let meetingId: String = ProcessInfo.processInfo.environment["MeetingId"] ?? ""
//        let url = URL(string: "zoomus://zoomus/join?confno=\(meetingId)")
//        UIApplication.shared.open(url!)

        // Using zoom SDK (MobileRTC)
        let meetingService = MobileRTC.shared().getMeetingService()
        let meetingParameter = [
            kMeetingParam_Username      : "test_user",
            kMeetingParam_MeetingNumber : meetingId
        ]

        let result = meetingService?.joinMeeting(with: meetingParameter)
        print("Meeting result: \(result)")
    }
}
