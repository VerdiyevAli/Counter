//
//  ViewController.swift
//  Couner PRO
//
//  Created by Ali Verdiyev on 24.07.24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var historyLable: UITextView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var textLable: UILabel!
    var count = 0
    var clickHistory: [String] = []
    override func viewDidLoad() {
    }

    @IBAction func minusButton(_ sender: UIButton) {
        if count > 0 {
            count -= 1
            textLable.text = String(count)
            updateClickHistory("Minus 1")
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        count += 1
            textLable.text = String(count)
        updateClickHistory("Plus 1")

    }
    func updateClickHistory(_ action: String) {
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .long)
        let historyItem = "\(timestamp): \(action)"
        clickHistory.append(historyItem)
        historyLable.text = clickHistory.joined(separator: "\n")
    }
    @IBAction func resetButton(_ sender: Any) {
        count = 0
                textLable.text = String(count)
                clickHistory.removeAll()
                historyLable.text = ""
    }
}

