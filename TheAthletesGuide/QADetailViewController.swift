//
//  QADetailViewController.swift
//  TheAthletesGuide
//
//  Created by Developer on 7/20/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Foundation

struct Answer {
    var adetails: String?
    var aquestion: String?
    var ascore: String?
    var asolution: String?
    var asubmitted: String?
    var asubmitter: String?
    var aid: String?
}

class aViewCell: UITableViewCell {
    @IBOutlet weak var asubmitterCell: UILabel!
    @IBOutlet weak var asubmittedCell: UILabel!
    @IBOutlet weak var asolutionCell: UILabel!
    @IBOutlet weak var ascoreCell: UILabel!
    @IBOutlet weak var adetailsCell: UILabel!
}

class QADetailViewController : UIViewController, UITableViewDelegate, UITableViewDataSource, UITextViewDelegate {
    
    @IBOutlet weak var myConstraint: NSLayoutConstraint!
    @IBOutlet weak var myOtherConstraint: NSLayoutConstraint!
    
    var db = Firestore.firestore()
    var answers = [Answer]()
    var selectedQuestion : Question?
    
    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var submitterCell: UILabel!
    @IBOutlet weak var submittedCell: UILabel!
    @IBOutlet weak var cityCell: UILabel!
    @IBOutlet weak var categoryCell: UILabel!
    @IBOutlet weak var scoreCell: UILabel!
    @IBOutlet weak var solvedCell: UILabel!
    @IBOutlet weak var detailsCell: UILabel!
    
    @IBOutlet weak var qdView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func answerButton(_ sender: Any) {
        self.confirmSubmit()
        
    }
    
    @IBOutlet weak var answerText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerText.text = "Enter your answer"
        answerText.textColor = UIColor.lightText
        answerText.font = UIFont(name: "Avenir Next", size: 17.0)
        answerText.delegate = self
        answerText.layer.cornerRadius = 10
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 118
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.prefersLargeTitles = false
        titleCell.text = selectedQuestion!.qtitle
        submittedCell.text = selectedQuestion!.qsubmitted
        submitterCell.text = selectedQuestion!.qsubmitter
        cityCell.text = selectedQuestion!.qcity
        categoryCell.text = selectedQuestion!.qcategory
        scoreCell.text = selectedQuestion?.qscore
        if selectedQuestion?.qsolved == "false" {
            solvedCell.text = " "
        } else {
            solvedCell.text = "SOLVED"
        }
        detailsCell.text = selectedQuestion!.qdetails
        loadData()
    }
    
    func loadData() {
        let aQuestion = selectedQuestion?.qid
        let theQuestion = aQuestion! as String
        db.collection("answers").whereField("question", isEqualTo: theQuestion)  .getDocuments { (snapshot, error) in
            
            if let error = error {
                
                print("Something went wrong: \(error)")
                
            } else {
                
                for document in snapshot!.documents {
                    
                    let adetails = document["details"] as! String
                    let aquestion = document["question"] as! String
                    let ascore = document["score"] as! String
                    let asolution = document["solution"] as! String
                    let asubmitter = document["submitter"] as! String
                    let asubmitted = document["submitted"] as! String
                    let aid = document.documentID
                    
                    self.answers.append(Answer(adetails: adetails, aquestion: aquestion, ascore: ascore, asolution: asolution, asubmitted: asubmitted, asubmitter: asubmitter, aid: aid))
                }
                
            }
            
            self.tableView.reloadData()
            
        }
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if answerText.text == "Enter your answer" {
            answerText.text = ""
            answerText.textColor = UIColor.white
            answerText.font = UIFont(name: "Avenir Next", size: 17.0)
        }
        myConstraint.constant += 100
        myOtherConstraint.constant += 100
        tableView.layoutIfNeeded()
        answerText.layoutIfNeeded()
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if answerText.text == "" {
            answerText.text = "Enter your answer"
            answerText.textColor = UIColor.lightText
            answerText.font = UIFont(name: "Avenir Next", size: 17.0)
        }
        myConstraint.constant -= 100
        myOtherConstraint.constant -= 100
        tableView.layoutIfNeeded()
        answerText.layoutIfNeeded()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return answers.count
    }

    @IBAction func confirmSubmit() {
        let defaultAction = UIAlertAction(title: "Submit", style: .default) { (action) in
            var ref: DocumentReference? = nil
            ref = self.db.collection("answers").addDocument(data: [
                "details": self.answerText.text ?? "Blank",
                "question": self.selectedQuestion?.qid ?? "error",
                "score": "0",
                "solution": "false",
                "submitted": "Jul 21",
                "submitter": "Joshua Lander",
            ]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print("Document added with ID: \(ref!.documentID)")
                    self.answers = [Answer]()
                    self.answerText.resignFirstResponder()
                    self.loadData()
                }
            }
        }
        let cancelAction = UIAlertAction(title: "Go Back", style: .destructive) { (action) in
            self.answers = [Answer]()
            self.answerText.resignFirstResponder()
            self.loadData()
        }
        let alert = UIAlertController(title: "Submit this Answer?", message: "Look at you! You're answering questions. Are you sure you want to submit this answer?", preferredStyle: .alert)
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true) {
            // The alert was presented
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aCell", for: indexPath) as! aViewCell
        let answer = answers[indexPath.row]
        cell.adetailsCell!.text = answer.adetails
        cell.ascoreCell!.text = answer.ascore
        cell.asubmittedCell!.text = answer.asubmitted
        cell.asubmitterCell!.text = answer.asubmitter
        if answer.asolution == "false" {
            cell.asolutionCell!.text = " "
            cell.backgroundColor = UIColor.black
            
        } else {
            cell.asolutionCell!.text = "SOLUTION"
            cell.backgroundColor = UIColor.darkGray

        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        let selectionColor = UIView() as UIView
        selectionColor.backgroundColor = UIColor.black
        cell.selectedBackgroundView = selectionColor
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let answer = answers[indexPath.row]
            db.collection("answers").document(answer.aid!).delete() { err in
                if let err = err {
                    print("Error removing document: \(err)")
                } else {
                    print("Document successfully removed!")
                    self.answers.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .fade)
                }
            }
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    
    func tableView(_ tableView: UITableView,
                            leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath)
        ->   UISwipeActionsConfiguration? {
            
            // Get current state from data source
            let answer = answers[indexPath.row]
            let theSolution = answer.asolution
            var boolSolution = Bool()
            if theSolution == "true" {
                boolSolution = true
            } else {
                boolSolution = false
            }
//            guard let solution = boolSolution! else {
//                return nil
//            }
    
            let title = boolSolution ?
                NSLocalizedString("Unsolve", comment: "Unsolve") :
                NSLocalizedString("Solve", comment: "Solve")
            
            let action = UIContextualAction(style: .normal, title: title, handler: { (action, view, completionHandler) in
                let solutionRef = self.db.collection("answers").document(answer.aid!)
                let questionRef = self.db.collection("questions").document(answer.aquestion!)
                if boolSolution {
                    solutionRef.updateData([
                    "solution": "false"
                    ]) { err in
                        if let err = err {
                            print("Error updating document: \(err)")
                        } else {
                            print("Answer unmarked as solution")
                        }
                    }
                    questionRef.updateData([
                        "solved": "false"
                    ]) { err in
                        if let err = err {
                            print("Error updating document: \(err)")
                        } else {
                            print("Question set to unsolved")
                        }
                    }
                    self.solvedCell.text = " "
                    self.answers = [Answer]()
                    self.loadData()
                    self.qdView.setNeedsLayout()
                    self.qdView.layoutIfNeeded()
                    } else {
                    solutionRef.updateData([
                    "solution": "true"
                    ]) { err in
                        if let err = err {
                            print("Error updating document: \(err)")
                        } else {
                            print("Answer marked as solution")
                        }
                    }
                    questionRef.updateData([
                        "solved": "true"
                    ]) { err in
                        if let err = err {
                            print("Error updating document: \(err)")
                        } else {
                            print("Question marked as solved")
                        }
                    }
                    self.solvedCell.text = "SOLVED"
                    self.answers = [Answer]()
                    self.loadData()
                    self.qdView.setNeedsLayout()
                    self.qdView.layoutIfNeeded()
                    }

            })
            
            action.backgroundColor = boolSolution ? .red : .green
            let configuration = UISwipeActionsConfiguration(actions: [action])
            return configuration
    }
}
