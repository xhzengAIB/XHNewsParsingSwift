//
//  XHWebViewDetailController.swift
//  XHNewsParsingSwift
//
//  Created by dw_iOS on 14-6-5.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
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