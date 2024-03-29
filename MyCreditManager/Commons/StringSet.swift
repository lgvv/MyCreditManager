//
//  StringSet.swift
//  MyCreditManager
//
//  Created by Hamlit Jason on 2022/11/21.
//

import Foundation

struct StringSet {
    // MARK: - excute
    static let 질문 = "원하는 기능을 입력해주세요."
    static let 선택옵션 = "1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제:, 5: 평점보기, X: 종료"
    static let 잘못된선택 = "뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요."
    
    // MARK: - 종료
    static let 종료 = "프로그램을 종료합니다..."
    
    // MARK: - 선택 1번
    static let 선택1번 = "추가할 학생의 이름을 입력해주세요."
    static let 선택1번_성공 = "학생을 추가했습니다."
    static let 선택1번_중복 = "은 이미 존재하는 학생입니다. 추가하지 않습니다."
    static let 선택1번_실패 = "입력이 잘못 되었습니다. 다시 확인해주세요."
    
    // MARK: - 선택 2번
    static let 선택2번 = "삭제할 학생의 이름을 입력해주세요."
    static let 선택2번_성공 = "학생을 삭제했습니다."
    static let 선택2번_실패 = "학생을 찾지 못했습니다."
    
    // MARK: - 선택 3번
    static let 선택3번 = """
    성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구변하여 차례로 작성해주세요.
    입력예) Mickey Swift A+
    만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.
    """
    static func 선택3번_성공(_ 과목: String, _ 성적: String) -> String {
        "학생의 \(과목) 과목이 \(성적)로 추가(변경) 되었습니다."
    }
    static let 선택3번_실패 = "입력이 잘못되었습니다. 다시 확인해주세요."
    
    // MARK: - 선택 4번
    static let 선택4번 = """
    성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.
    입력예) Mickey Swift
    """
    static func 선택4번_성공(_ 이름: String, _ 과목: String) -> String {
        "\(이름) 학생의 \(과목)의 성적이 삭제되었습니다."
    }
    static let 선택4번_실패_입력이_잘못되었을때 = "입력이 잘못 되었습니다. 다시 확인해주세요."
    static let 선택4번_실패_학생이_없을떄 = "학생을 찾지 못했습니다."
    static let 선택4번_실패_과목이_없을떄 = "학생이 수강한 과목을 찾지 못했습니다."
    
    // MARK: - 선택 5번
    static let 선택5번 = "평점을 알고싶은 학생의 이름을 입력해주세요"
    static func 선택5번_성공(_ student: Student) -> String {
        var text: String = ""
        var sum: Float = 0.0
        student.성적.forEach { key, value in
            text += key + ": " + Student.Grade.convertToString(value) + "\n"
            sum += value.rawValue
        }
        
        sum = sum / Float(student.성적.count)
        text = text + "평점: " + String(sum)
        return text
    }
    static let 선택5번_실패_입력이_잘못되었을때 = "입력이 잘못 되었습니다. 다시 확인해주세요."
    static let 선택5번_실패_학생이_없을떄 = "학생을 찾지 못했습니다."
}
