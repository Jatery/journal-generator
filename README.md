# journal-generator
help transform your markdown journal to pdf for better reading!

我曾經有個很愛用的日記軟體，但被無預警地下架了，導致我現在有近萬字的日記不知道救不救得回來……。我才意識到自己為什麼還要被這種軟體綁架，於是就自己寫了一個。寫日記用 markdown 比較方便，但日後的保存閱讀還是 pdf 會比較好。

有沒有想過用 LaTeX？有，但還在研究排版，十二月卻馬上就到了，最終還是用回原本的方案比較好。

## Usage

先裝好 [pandoc](https://pandoc.org/installing.html) 和 [weasyprint](https://weasyprint.org/) 兩個工具
```bash
brew install pandoc weasyprint
```
然後在日記資料夾的架構應該要長這樣：
```
/
|-  build.sh
|-  /md
|   |-  2024nov.md
|   |-  2024dec.md
|- /pdf
    |-  2024nov.pdf
    |-  2024dec.pdf
```
然後跑 shell script 就可以啦！對噴出的警告視而不見~
```bash
chmod +x build.sh
./build.sh
```

## Customize

在 markdown yaml header 把 pdf 用成喜歡的樣子吧~
```
---
title: 2024年12月
author: Jatery Chen
header-includes: |
    <style>
    @font-face {
        font-family: 'Iansui';
        src: url('../Iansui-Regular.ttf') format('truetype');
    }
    body {
        font-family: 'Iansui';
    }
    h1 {
        break-before: page;
    }
    </style>
---
```
具體參考 [Pandoc Manual](https://pandoc.org/MANUAL.html)

## Credits

[芫荽](https://github.com/ButTaiwan/iansui?tab=readme-ov-file)是好東西，你應該使用它。

感謝[好和弦](https://wiwi.blog/docs/terminal/markdown-conversion/)提供的概念與工具，原來在這裡不只能學到樂理而已。

當然還有[其他人的用法](https://sam.webspace.tw/2020/01/13/%E4%BD%BF%E7%94%A8%20Pandoc%20%E5%B0%87%20Markdown%20%E8%BD%89%E7%82%BA%20PDF%20%E6%96%87%E4%BB%B6/)
