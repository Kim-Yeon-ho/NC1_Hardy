//
//  RunData.swift
//  NC1_Hardy
//
//  Created by 김연호 on 2022/05/04.
//

import Foundation

struct RunData{
    let id : Int
    let runImages : String
    let runKinds : String
    let runMeters : String
    let runDates : String
    
}

var RunDatas : [RunData] = [
    RunData(id: 0,
            runImages: "runner",
            runKinds: "Outdoor Run",
            runMeters: "3.04KM",
            runDates: "22/04/22"
            ),
    
    RunData(id: 1,
            runImages: "runner",
            runKinds: "Outdoor Run",
            runMeters: "5.64KM",
            runDates: "22/04/07"
            ),
    
    RunData(id: 2,
            runImages: "runner",
            runKinds: "Outdoor Run",
            runMeters: "3.91KM",
            runDates: "22/04/04"
            ),
    
    RunData(id: 3,
            runImages: "runner",
            runKinds: "Outdoor Run",
            runMeters: "3.03KM",
            runDates: "22/04/02"
            ),
    
    RunData(id: 4,
            runImages: "runner",
            runKinds: "Outdoor Run",
            runMeters: "4.09KM",
            runDates: "22/04/01"
            ),
    
    RunData(id: 5,
            runImages: "runner",
            runKinds: "Outdoor Run",
            runMeters: "3.51KM",
            runDates: "22/03/29"
            ),
    
    RunData(id: 6,
            runImages: "runner",
            runKinds: "Outdoor Run",
            runMeters: "3.13KM",
            runDates: "22/03/27"
            )
]
