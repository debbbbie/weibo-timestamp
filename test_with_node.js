var TimeStamp = require('weibo-timestamp');

var ONE_SECOND = 1000,
    ONE_MINUTE = ONE_SECOND * 60,
    ONE_HOUR   = ONE_MINUTE * 60,
    ONE_DAY    = ONE_HOUR   * 24;

var dNow = new Date(),
    now = dNow.getTime();

console.log( TimeStamp(now + ONE_SECOND     ) == "您穿越了");
console.log( TimeStamp(now                  ) == "刚刚");
console.log( TimeStamp(now - ONE_SECOND     ) == "刚刚");
console.log( TimeStamp(now - ONE_SECOND * 10) == "10秒前");
console.log( TimeStamp(now - ONE_SECOND * 13) == "10秒前");
console.log( TimeStamp(now - ONE_SECOND * 20) == "20秒前");
console.log( TimeStamp(now - ONE_SECOND * 43) == "40秒前");
console.log( TimeStamp(now - ONE_MINUTE     ) == "1分钟前");
console.log( TimeStamp(now - ONE_MINUTE * 3 ) == "3分钟前");
console.log( TimeStamp(now - ONE_MINUTE * 54) == "54分钟前");

console.log( TimeStamp(now - ONE_HOUR       )); // 今天**:**
console.log( TimeStamp(now - ONE_HOUR   * 12)); // 今天**:**
console.log( TimeStamp(now - ONE_DAY        )); // *月*日 **:**
console.log( TimeStamp(now - ONE_DAY    *564)); // ****年*月*日 **:**