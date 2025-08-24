//
//  AboutViewController.swift
//  Assignment1
//
//  Created by Andrew Walker on 8/24/25.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
  @IBOutlet weak var webView: WKWebView!

  override func viewDidLoad() {
    super.viewDidLoad()

    if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
      let request = URLRequest(url: url)
      webView.load(request)
    }
  }

  @IBAction func close() {
    dismiss(animated: true, completion: nil)
  }
}
