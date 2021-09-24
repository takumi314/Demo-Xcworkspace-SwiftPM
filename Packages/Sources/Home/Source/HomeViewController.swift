//
//  HomeViewController.swift
//  
//
//  Created by Kohey Nishioka on 2021/09/25.
//

import UIKit

public class HomeViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!

    public init() {
        super.init(nibName: nil, bundle: Bundle.module)
    }

    required init?(coder: NSCoder) {
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        title = "HOME"
    }

}
