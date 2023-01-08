import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var tLen = t.count
    var pLen = p.count
    var answer = 0
    var tmp: [String] = []
    // print(tLen-pLen+1)
    for (i, ele) in t.enumerated() {
        if(i==(tLen-pLen+1)) {break;}
            let startIndex = t.index(t.startIndex, offsetBy: i)// 사용자지정 시작인덱스
            let endIndex = t.index(t.startIndex, offsetBy: i+pLen)// 사용자지정 끝인덱스
            var sliced_str = t[startIndex ..< endIndex]
            // print(type(of:sliced_str))
            tmp.append(String(sliced_str));
     }
    
    for ele in tmp {
        guard let ele = Int(ele), let p = Int(p) else {fatalError()}
        if Int(ele) <= Int(p) { answer += 1}
    }
    
    return answer
}
