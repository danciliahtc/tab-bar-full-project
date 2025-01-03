//
//  JobBoardViewController.swift
//  jobBoardTableView
//
//  Created by Dancilia Harmon   on 12/26/24.
//

import UIKit

class JobBoardViewController: UIViewController {
    
    let jobBoardPost = [
        JobBoardPost(jobTitle: "Senior Software Engineer", companyName: "Apple", jobDesc: "10 years of Exp", jobSalary: "$150k"),
        JobBoardPost(jobTitle: "iOS Expert", companyName: "Microsoft", jobDesc: "8 years of Exp", jobSalary: "$130k"),
        JobBoardPost(jobTitle: "Mobile App Developer", companyName: "Discord", jobDesc: "15 years of Exp", jobSalary: "$200k"),
        JobBoardPost(jobTitle: "Lead iOS Developer", companyName: "Skype", jobDesc: "9 years of Exp", jobSalary: "$120k")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
    
}

extension JobBoardViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobBoardPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JobBoardCell", for: indexPath) as? JobBoardTableViewCell
        
        let post = jobBoardPost[indexPath.row]
        
        let jobBoardPost = jobBoardPost[indexPath.row]
        
        cell?.configure(jobBoardPost: post)
        
        return cell ?? UITableViewCell()
    }
    
}
