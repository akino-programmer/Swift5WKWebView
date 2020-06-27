//
//  ViewController.swift
//  Swift5WKWebView
//
//  Created by 野口晃 on 2020/06/27.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController {

    var webView = WKWebView()
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var toolBar: UIToolbar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //大きさ
        webView.frame = CGRect(x: 0,y: toolBar.frame.size.height, width: view.frame.size.width,height: view.frame.size.height - toolBar.frame.size.height*2)
        view.addSubview(webView)

    }
    
    
    @IBAction func go(_ sender: Any) {
        
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        
        
    }
    
}

