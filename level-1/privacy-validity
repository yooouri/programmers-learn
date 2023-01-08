import Foundation

//ing... 40/100
 func subStringToInt(str:String, start:Int, end:Int) -> Int {
      let startIndex = str.index(str.startIndex, offsetBy: start)
      let endIndex = str.index(str.startIndex, offsetBy: end)
      let sliced_str = str[startIndex ..< endIndex]
     return Int(sliced_str)!
}


func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var answer:[Int] = []
    var dic: [String:Int] = [:]
    for ele in terms {
        let tmp = ele.split(separator: " ");
         dic[String(tmp[0])] = Int(tmp[1])
    }
    // print(dic)
    for (i,ele) in privacies.enumerated() {
        let tmp = ele.split(separator: " ");
        let dateStr = String(tmp[0]);
        let key = String(tmp[1]);
        let addMon = dic[key]!;
        
        var year = subStringToInt(str: dateStr, start: 0,end: 4)
        var mon = subStringToInt(str: dateStr, start: 5, end: 7)
        var day = subStringToInt(str: dateStr, start: 8, end: 10)
        
        let tYear = subStringToInt(str: today, start: 0,end: 4)
        let tMon = subStringToInt(str: today, start: 5, end: 7)
        let tDay = subStringToInt(str: today, start: 8, end: 10)
     
        if( (mon + addMon) > 12 ) {
            year += 1
            mon = mon+addMon-12
        }else{
            mon = mon+addMon
        }
        
        //print(tDay, day)
        if(tYear > year){
               //print("1:",i)
               answer.append(i+1)
        }else if (tYear == year){
            if(tMon > mon) {
                // print("2:",i)
                answer.append(i+1)
            }else if(tMon == mon){
                if(tDay > day) {
                    // print("3:",i)
                    answer.append(i+1)
                }else if(tDay == day){
                    // print("4:",i)
                    answer.append(i+1)
                }  
            }
        }//else if end
        
    }//for end
 
    return answer
}
