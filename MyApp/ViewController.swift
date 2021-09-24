//
//  ViewController.swift
//  MyApp
//
//  Created by Kohey Nishioka on 2021/09/24.
//

import UIKit
import Build

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "HOGE"
        view.backgroundColor = .orange
//        let app = AppFeature()
//        app.setIdentifier("12345")
//
//        let b = B()
//        b.track(event: "hoge")
//        Alamofire.AF.cancelAllRequests()
        print(Build.live.facebookURL())
        print(Build.live.googleURL())
        print(Build.live.twitterURL())
    }


}
