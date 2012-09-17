# weibo-timestamp: A weibo(like twitter) timestamp format, use on browser client or nodejs server.


## Nodejs Install

```bash
$ npm install weibo-timestamp
```


## 输入时间，输出如下
```html
刚刚
10秒前
20秒前
...
1分钟前
2分钟前
...
60分钟前
...
今天09:02
...
9月10日 07:50
```

## How to use in NodeJS

```javascript
// load weibo-timestamp
var TimeStamp = require('weibo-timestamp');

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
```


## How to use in JavaScript

```html
<script type="text/javascript" src=".../weibo-timestamp/index.js"></script>
<script type="text/javascript" src="my_test.js"></script>
```

```javascript
document.writeLn('<br/>' + weibo_timestamps(now + ONE_SECOND     ) == "您穿越了");
document.writeLn('<br/>' + weibo_timestamps(now                  ) == "刚刚");
document.writeLn('<br/>' + weibo_timestamps(now - ONE_SECOND     ) == "刚刚");
document.writeLn('<br/>' + weibo_timestamps(now - ONE_SECOND * 10) == "10秒前");
document.writeLn('<br/>' + weibo_timestamps(now - ONE_SECOND * 13) == "10秒前");
document.writeLn('<br/>' + weibo_timestamps(now - ONE_SECOND * 20) == "20秒前");
document.writeLn('<br/>' + weibo_timestamps(now - ONE_SECOND * 43) == "40秒前");
document.writeLn('<br/>' + weibo_timestamps(now - ONE_MINUTE     ) == "1分钟前");
document.writeLn('<br/>' + weibo_timestamps(now - ONE_MINUTE * 3 ) == "3分钟前");
document.writeLn('<br/>' + weibo_timestamps(now - ONE_MINUTE * 54) == "54分钟前");

document.writeLn('<br/>' + weibo_timestamps(now - ONE_HOUR       )); // 今天**:**
document.writeLn('<br/>' + weibo_timestamps(now - ONE_HOUR   * 12)); // 今天**:**
document.writeLn('<br/>' + weibo_timestamps(now - ONE_DAY        )); // *月*日 **:**
document.writeLn('<br/>' + weibo_timestamps(now - ONE_DAY    *564)); // ****年*月*日 **:**
```




## License

(The MIT License)

Copyright (c) 2012-2013 debbbbie &lt;debbbbie@163.com&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
