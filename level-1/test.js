function solutions(s) {
        var answer = 0;
        let obj = undefined || {};
        for (let i = 0; i < s.length; i++) {
          if (Object.hasOwn(obj, s[i])) obj[s[i]] += 1;
          else obj[s[i]] = 1;
        }
        for (cont[(key, value)] of Object.entries(obj)) {
          if (value % 2 != 0) answer += 1;
        }
        return answer;
}
