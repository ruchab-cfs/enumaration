//
//  ViewController.swift
//  enumaration
//
//  Created by apple on 11/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    //without type
    enum College{
        case studentName
        case collegeName
        case id
    }
    
    //With type
    enum CollegeType: String{
        case studentName = "Rucha"
        case collegeName = "Sipna coet"
        case id = "100"
    }
    
    //
    enum Gender{
        case male, female
    }
    
    enum CollegeFunc{
        case studentName
        case collegeName
        case id
        
        func description() -> String{
            switch self{
            case .studentName:
                return "My name is Rucha"
            case.collegeName:
                return "Sipna coet"
            case.id:
                return "100"
            }
        }
    }
    
    //with arguments
    
    enum Student{
        case studentName(String)
        case marks(String,String,String)
    }
    
    
    
    func withFuncArgument(){
        _ = Student.studentName("Rucha")
        let stuMarks = Student.marks("12", "13", "14")
        switch stuMarks{
        case .studentName(let strName):
            print("My name is \(strName)")
        case .marks(let m1, let m2, let m3):
            print("My marks are \(m1) \(m2) \(m3)")
        }
    }

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        withFuncArgument()
//        let callFuncDetail = CollegeFunc.collegeName.description()
//        print(callFuncDetail)
        //withoutType()
        //withType()
    }

    func withType(){
        let collegeTypeDetail = CollegeType.collegeName
        print(collegeTypeDetail)
        let collegeTypeRaw = CollegeType.collegeName.rawValue
        print(collegeTypeRaw)
        let collHas = CollegeType.collegeName.hashValue
        print(collHas)
    }

    func withoutType(){
        let collegeDetail = College.collegeName
        let nameHas = College.studentName.hashValue
        print(nameHas)
//        print(collegeDetail)
        switch collegeDetail{
        case .collegeName:
            print("Sipna coet")
        case .id:
            print("102")
        case .studentName:
            print("Rucha")
        }
    }
}

