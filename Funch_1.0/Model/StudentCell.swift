//
//  StudentCell.swift
//  Funch_1.0
//
//  Created by Guillermo Ramos  on 10/5/19.
//  Copyright © 2019 Guillermo Ramos . All rights reserved.
//

import UIKit

class StudentCell: UITableViewCell {
    
    var studentImageView = UIImageView()
    var studentNameLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(studentImageView)
        addSubview(studentNameLabel)
        
        configureImageView()
        configureNameLabel()
        setImageConstraints()
        setLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(student: Student) {
        studentImageView.image = student.image
        studentNameLabel.text = student.name
    }
    
    
    func configureImageView() {
        studentImageView.layer.cornerRadius = 10
        studentImageView.clipsToBounds = true
    }
    
    func configureNameLabel() {
        studentNameLabel.numberOfLines = 0
        studentNameLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        studentImageView.translatesAutoresizingMaskIntoConstraints = false
        studentImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        studentImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        studentImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        studentImageView.widthAnchor.constraint(equalTo: studentImageView.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    func setLabelConstraints() {
        studentNameLabel.translatesAutoresizingMaskIntoConstraints = false
        studentNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        studentNameLabel.leadingAnchor.constraint(equalTo: studentImageView.trailingAnchor, constant: 20).isActive = true
        studentNameLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        studentNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }

}
