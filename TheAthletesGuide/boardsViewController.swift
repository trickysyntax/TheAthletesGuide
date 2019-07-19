//
//  boardsViewController.swift
//  TheAthletesGuide
//
//  Created by Developer on 7/17/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import UIKit
import WebKit
class boardsViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://ourbaseballlife.com/blog/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
