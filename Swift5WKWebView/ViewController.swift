//
//  ViewController.swift
//  Swift5WKWebView
//
//  Created by 野口晃 on 2020/06/27.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController, WKNavigationDelegate {

    var webView = WKWebView()
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var toolBar: UIToolbar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //大きさ
        webView.frame = CGRect(x: 0,y: toolBar.frame.size.height, width: view.frame.size.width,height: view.frame.size.height - toolBar.frame.size.height*2)
        view.addSubview(webView)
        
        webView.navigationDelegate = self
        
        //何をロードするのか
        webView.navigationDelegate = self
        let url = URL(string:"https://www.yahoo.co.jp/")
        let request = URLRequest(url: url!)
        webView.load(request)

    }
    
    //ロードが開始された時
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("読み込み開始")
        indicator.startAnimating()
    }
    
    
    //ロードが完了した時
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("ロード完了")
        indicator.stopAnimating()
    }
    
    
    @IBAction func go(_ sender: Any) {
        
        webView.goForward()
    }
    
    @IBAction func back(_ sender: Any) {
        
        webView.goBack()
        
    }
    
}

