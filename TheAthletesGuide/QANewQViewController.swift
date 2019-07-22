//
//  QANewQViewController.swift
//  TheAthletesGuide
//
//  Created by Developer on 7/20/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation
import UIKit
import FirebaseFirestore

class QANewQViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextViewDelegate {
    
    var selectedQuestion : Question?
    var catPickerData: [String] = [String]()
    var db = Firestore.firestore()
    
    @IBOutlet weak var catPicker: UIPickerView!
    @IBOutlet weak var newqTitle: UITextField!
    @IBOutlet weak var newqDetails: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        newqDetails.text = "Enter details here."
        newqDetails.textColor = UIColor.lightText
        newqDetails.font = UIFont(name: "Avenir Next", size: 17.0)
        newqDetails.delegate = self
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonItem.SystemItem.save, target: self, action: #selector(self.action(sender:)))

        self.catPicker.delegate = self
        self.catPicker.dataSource = self
        catPickerData = ["Team/Stadium", "Housing", "Health", "Stuff to Do", "Pets", "Kids", "Other"]
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Enter details here." {
            textView.text = ""
            textView.textColor = UIColor.white
            textView.font = UIFont(name: "Avenir Next", size: 17.0)
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == "" {
            textView.text = "Enter details here."
            textView.textColor = UIColor.lightText
            textView.font = UIFont(name: "Avenir Next", size: 17.0)
        }
    }
    
    @objc func action(sender: UIBarButtonItem) {
        var ref: DocumentReference? = nil
        ref = db.collection("questions").addDocument(data: [
            "category": theRowData.self ?? "None",
            "city": "Arizona",
            "details": newqDetails.text ?? "None",
            "score": "1",
            "solved": "false",
            "submitted": "Jul 21",
            "submitter": "Joshua Lander",
            "title": newqTitle.text ?? "None"
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
                self.confirmSubmit()
            }
        }
    }
    
    @IBAction func confirmSubmit() {
        // Create the action buttons for the alert.
        let defaultAction = UIAlertAction(title: "Go Back", style: .default) { (action) in
            self.navigationController?.popToRootViewController(animated: true)
        }

        let alert = UIAlertController(title: "Question Added", message: "Great! You just submitted a question. Now, we wait for an answer.", preferredStyle: .alert)
        alert.addAction(defaultAction)
        
        self.present(alert, animated: true) {
            // The alert was presented
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return catPickerData.count
    }
    
    var theRowData: String?
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        _ = self.catPickerData[row]
        let rowno = row
        let theRowData = self.catPickerData[rowno]
        
        return theRowData
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let myData = self.catPickerData[row]
        let myTitle = NSAttributedString(string: myData, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return myTitle
    }
}
