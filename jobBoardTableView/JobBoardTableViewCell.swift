//
//  JobBoardTableViewCell.swift
//  jobBoardTableView
//
//  Created by Dancilia Harmon   on 12/26/24.
//

import UIKit

class JobBoardTableViewCell: UITableViewCell {

    @IBOutlet weak var jobTitleLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var jobDescLabel: UILabel!
    @IBOutlet weak var jobSalaryLabel: UILabel!
    
    func configure(jobBoardPost: JobBoardPost) {
        
        jobTitleLabel.text = jobBoardPost.jobTitle
        companyNameLabel.text = jobBoardPost.companyName
        jobDescLabel.text = jobBoardPost.jobDesc
        jobSalaryLabel.text = jobBoardPost.jobSalary
    
    }
}
