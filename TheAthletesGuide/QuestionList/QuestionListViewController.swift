//
//  questionViewController.swift
//  TheAthletesGuide
//
//  Created by Developer on 7/17/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//
import UIKit
import FirebaseFirestore


//class QuestionListViewController: ViewController<QuestionListViewModel>, UITableViewDataSource, UITableViewDelegate {
//
//    @IBOutlet weak var atableView: UITableView!
//    private var selectedQuestion: Question?
//    @IBOutlet weak var createQuestionButton: UIView!
//    
//    private var listener: ListenerRegistration?
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        viewModel.didChangeData = { [weak self] data in
//            guard let strongSelf = self else { return }
//            strongSelf.tableView.reloadData()
//        }
//        
//        atableView.dataSource = self
//        atableView.delegate = self
//        atableView.estimatedRowHeight = 200
//        
//        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.addPressed))
//        createQuestionButton.addGestureRecognizer(gesture)
//    }
//    
//    @objc func addPressed(sender:UITapGestureRecognizer){
//        let controller = newQuestionViewController.fromStoryboard()
//        self.navigationController?.present(controller, animated: true, completion: nil)
//    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        viewModel.observeQuery()
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        viewModel.stopObserving()
//    }
//    
//    deinit {
//        listener?.remove()
//    }
//    
//    // MARK: - UITableViewDataSource
//    func atableView(_ atableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = atableView.dequeueReusableCell(withIdentifier: "cell") as! QuestionTableViewCell
//        let question = viewModel.viewData.questions[indexPath.row]
//        cell.populate(question: question)
//        return cell
//    }
//    
//    func atableView(_ atableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return viewModel.viewData.questions.count
//    }
//    
//    // MARK: - UITableViewDelegate
//    func atableView(_ atableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        atableView.deselectRow(at: indexPath, animated: true)
//        self.selectedQuestion = viewModel.viewData.questions[indexPath.row]
//        
//        let vc = QuestionDetailViewController.fromStoryboard()
//        vc.question = selectedQuestion
//        vc.questionReference = viewModel.documents[indexPath.row].reference
//        
//        navigationController?.pushViewController(vc, animated: true)
//    }
//    
//}

class QuestionTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var submitted: UILabel!
    @IBOutlet weak var submitter: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var city: UILabel!

    
    func populate(question: Question) {
        title.text = question.title
        category.text = question.category
        submitted.text = question.submitted
        submitter.text = question.submitter
        score.text = question.score
        city.text = question.city
    }
}
//import Foundation
//import UIKit
//import FirebaseCore
//import FirebaseFirestore
//
//class questionsViewController: UIViewController {
//    override func viewDidAppear(_ animated: Bool){
//        super.viewDidAppear(animated)
//
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        db.collection("cities").getDocuments() { (querySnapshot, err) in
//            if let err = err {
//                print("Error getting documents: \(err)")
//            } else {
//                for document in querySnapshot!.documents {
//                    print("\(document.documentID) => \(document.data())")
//                }
//            }
//        }
//        // Do any additional setup after loading the view.
//    }
//
//    class questionCell: UITableViewCell {
//        @IBOutlet weak var questionTitle: UILabel!
//        @IBOutlet weak var questionCategory: UILabel!
//        @IBOutlet weak var questionSubmitted: UILabel!
//        @IBOutlet weak var questionSubmitter: UILabel!
//        @IBOutlet weak var questionScore: UILabel!
//        @IBOutlet weak var questionCity: UILabel!
//    }
//}
