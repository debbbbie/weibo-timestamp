# weibo-timestamp: A weibo(like twitter) timestamp format, use on browser client or nodejs server.nnn## Nodejs Installnn```bashn$ npm install weibo-timestampn```nnn## 输入时间，输出如下n```htmln刚刚n10秒前n20秒前n...n1分钟前n2分钟前n...n60分钟前n...n今天09:02n...n9月10日 07:50n```nn## How to use in NodeJSnn```javascriptn// load weibo-timestampnvar TimeStamp = require('weibo-timestamp');nnconsole.log( TimeStamp(now + ONE_SECOND     ) == "您穿越了");nconsole.log( TimeStamp(now                  ) == "刚刚");nconsole.log( TimeStamp(now - ONE_SECOND     ) == "刚刚");nconsole.log( TimeStamp(now - ONE_SECOND * 10) == "10秒前");nconsole.log( TimeStamp(now - ONE_SECOND * 13) == "10秒前");nconsole.log( TimeStamp(now - ONE_SECOND * 20) == "20秒前");nconsole.log( TimeStamp(now - ONE_SECOND * 43) == "40秒前");nconsole.log( TimeStamp(now - ONE_MINUTE     ) == "1分钟前");nconsole.log( TimeStamp(now - ONE_MINUTE * 3 ) == "3分钟前");nconsole.log( TimeStamp(now - ONE_MINUTE * 54) == "54分钟前");nnconsole.log( TimeStamp(now - ONE_HOUR       )); // 今天**:**nconsole.log( TimeStamp(now - ONE_HOUR   * 12)); // 今天**:**nconsole.log( TimeStamp(now - ONE_DAY        )); // *月*日 **:**nconsole.log( TimeStamp(now - ONE_DAY    *564)); // ****年*月*日 **:**n```nnn## How to use in JavaScriptnn```htmln<script type="text/javascript" src=".../weibo-timestamp/index.js"></script>n<script type="text/javascript" src="my_test.js"></script>n```nn```javascriptndocument.writeLn('<br/>' + weibo_timestamps(now + ONE_SECOND     ) == "您穿越了");ndocument.writeLn('<br/>' + weibo_timestamps(now                  ) == "刚刚");ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_SECOND     ) == "刚刚");ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_SECOND * 10) == "10秒前");ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_SECOND * 13) == "10秒前");ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_SECOND * 20) == "20秒前");ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_SECOND * 43) == "40秒前");ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_MINUTE     ) == "1分钟前");ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_MINUTE * 3 ) == "3分钟前");ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_MINUTE * 54) == "54分钟前");nndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_HOUR       )); // 今天**:**ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_HOUR   * 12)); // 今天**:**ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_DAY        )); // *月*日 **:**ndocument.writeLn('<br/>' + weibo_timestamps(now - ONE_DAY    *564)); // ****年*月*日 **:**n```