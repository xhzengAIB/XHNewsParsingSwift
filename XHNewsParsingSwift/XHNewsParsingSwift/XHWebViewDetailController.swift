//
//  XHWebViewDetailController.swift
//  XHNewsParsingSwift
//
//  Created by dw_iOS on 14-6-5.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

import Foundation
import UIKit

class XHWebViewDetailController : UIViewController {
    var detailID = NSString()
    
    var detailURL = "http://qingbin.sinaapp.com/api/html/"
    
    @IBOutlet var webView : UIWebView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        loadDataSource();
    }
    
    func loadDataSource() {
        var urlString = detailURL + "\(detailID).html"
        var url: NSURL = NSURL(string: urlString)!
        
        var urlRequest = NSURLRequest(URL :url)
        webView?.loadRequest(urlRequest)
    }
}