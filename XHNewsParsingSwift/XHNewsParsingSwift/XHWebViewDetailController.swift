//
//  XHWebViewDetailController.swift
//  XHNewsParsingSwift
//
//  Created by dw_iOS on 14-6-5.
//  Copyright (c) 2014年 广州华多网络科技有限公司 多玩事业部 iOS软件工程师 曾宪华. All rights reserved.
//

import Foundation
import UIKit

class XHWebViewDetailController : UIViewController {
    var detailID = NSInteger()
    
    var detailURL = "http://qingbin.sinaapp.com/api/html/108035.html"
    
    @IBOutlet var webView : UIWebView
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        loadDataSource();
    }
    
    func loadDataSource() {
        
        var urlString = detailURL
        var url = NSURL.URLWithString(urlString)
        var urlRequest = NSURLRequest(URL :NSURL.URLWithString(urlString))
        webView.loadRequest(urlRequest)
    }
}