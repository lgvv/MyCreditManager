//
//  선택2번.swift
//  MyCreditManager
//
//  Created by Hamlit Jason on 2022/11/21.
//

import Foundation

func 선택2번() {
    print(StringSet.선택2번)
    
    // MARK: - Input
    let input = readLine() ?? ""
    
    // MARK: - Logic
    if students[input] != nil {
        students[input] = nil
        print(input + " " + StringSet.선택2번_성공)
    } else {
        print(input + " " + StringSet.선택2번_실패)
    }
}
