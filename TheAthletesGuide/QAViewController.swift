//
//  QAViewController.swift
//  TheAthletesGuide
//
//  Created by Developer on 7/19/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Foundation

struct Question {
    var qtitle: String?
    var qdetails: String?
    var qcategory: String?
    var qsubmitter: String?
    var qsubmitted: String?
    var qscore: String?
    var qsolved: String?
    var qcity: String?
    var qid: String?
}

class qViewCell: UITableViewCell {
    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var submitterCell: UILabel!
    @IBOutlet weak var submittedCell: UILabel!
    @IBOutlet weak var cityCell: UILabel!
    @IBOutlet weak var categoryCell: UILabel!
    @IBOutlet weak var scoreCell: UILabel!
    @IBOutlet weak var solvedCell: UILabel!
}

class QAViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return.lightContent
    }
    
    var db = Firestore.firestore()
    var questions = [Question]()
    var selectedQuestion = Question()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        questions = [Question]()
        loadData()
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        db = Firestore.firestore()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 118
    
    }
    func loadData() {
        
        db.collection("questions").getDocuments { (snapshot, error) in
            
            if let error = error {
                
                print("Something went wrong: \(error)")
                
            } else {
                
                for document in snapshot!.documents {
                    
                    let qtitle = document["title"] as! String
                    let qsubmitter = document["submitter"] as! String
                    let qsubmitted = document["submitted"] as! String
                    let qcity = document["city"] as! String
                    let qsolved = document["solved"] as! String
                    let qscore = document["score"] as! String
                    let qcategory = document["category"] as! String
                    let qdetails = document["details"] as! String
                    let qid = document.documentID 
                    
                    self.questions.append(Question(qtitle: qtitle, qdetails: qdetails, qcategory: qcategory, qsubmitter: qsubmitter, qsubmitted: qsubmitted, qscore: qscore, qsolved: qsolved, qcity: qcity, qid: qid))
                    }

            }
            
            self.tableView.reloadData()
            
        }
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func newQ(_ sender: Any) {
        self.performSegue(withIdentifier: "newQSegue", sender: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "qCell", for: indexPath) as! qViewCell
        let question = questions[indexPath.row]
        cell.titleCell!.text = question.qtitle
        cell.submitterCell!.text = question.qsubmitter
        cell.submittedCell.text = question.qsubmitted
        cell.cityCell!.text = question.qcity
        if question.qsolved == "false" {
            cell.solvedCell!.text = " "
        } else {
            cell.solvedCell!.text = "√"
        }
        cell.scoreCell!.text = question.qscore
        cell.categoryCell!.text = question.qcategory
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedQuestion = questions[indexPath.row]
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            let detailVC  = segue.destination as! QADetailViewController
//            detailVC.selectedQuestion = selectedQuestion
//        }
        tableView.deselectRow(at: indexPath, animated: true)
        self.performSegue(withIdentifier: "qdetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "newQSegue" {
            let detailVC  = segue.destination as! QANewQViewController
            detailVC.selectedQuestion = selectedQuestion
        } else {
            let detailVC = segue.destination as! QADetailViewController
            detailVC.selectedQuestion = selectedQuestion
        }
    }

    func prepare(for segue: UIStoryboardSegue, sender: UIBarButtonItem?) {
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        let selectionColor = UIView() as UIView
        selectionColor.backgroundColor = UIColor.darkGray
        cell.selectedBackgroundView = selectionColor
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let question = questions[indexPath.row]
            db.collection("questions").document(question.qid!).delete() { err in
                if let err = err {
                    print("Error removing document: \(err)")
                } else {
                    print("Document successfully removed!")
                    self.questions.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .fade)
                }
            }
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
}
