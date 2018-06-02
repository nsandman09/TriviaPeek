//
//  ViewController.swift
//  TriviaPeek5
//
//  Created by Noah Sandman on 5/22/18.
//  Copyright © 2018 Noah Sandman. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    @IBOutlet weak var window: NSWindow!
    
    @IBOutlet weak var googleWebView: WKWebView!
    @IBOutlet weak var discordWebView: WKWebView!
    @IBOutlet weak var triviaQuackWebView: WKWebView!
//  @IBOutlet weak var hqtLiveWebView: WKWebView!
//  @IBOutlet weak var hqtLegacyWebView: WebView!
    @IBOutlet weak var triviaPartyLegacyView: WebView!
    @IBOutlet weak var triviaCrowdWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let googleUrl = URL(string: "https://www.google.com")
        let googleUrlReq = URLRequest(url: googleUrl!)
        googleWebView.customUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0_1 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/14A403 Safari/602.1"
        googleWebView.load(googleUrlReq)
        
        let discordUrl = URL(string: "https://discordapp.com/channels/382761915811627009/444975842825732096")
        let discordUrlReq = URLRequest(url: discordUrl!)
        discordWebView.load(discordUrlReq)
        
        let triviaQuackUrl = URL(string: "https://triviaquack.us")
        let triviaQuackUrlReq = URLRequest(url: triviaQuackUrl!)
        triviaQuackWebView.load(triviaQuackUrlReq)
     
//      hqtLegacyWebView.mainFrameURL = "https://live.hqt.space";
        triviaPartyLegacyView.mainFrameURL = "https://live.trivia.party/";
        
        let triviaCrowdUrl = URL(string: "https://triviacrowd.live")
        let triviaCrowdUrlReq = URLRequest(url: triviaCrowdUrl!)
        triviaCrowdWebView.load(triviaCrowdUrlReq)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

