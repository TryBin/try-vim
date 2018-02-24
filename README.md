# 一.try-vim
vim简略配置.Simple configurations of vim
## 1.预览

启动界面
![](https://coding.net/u/TryBin/p/image/git/raw/master/Vim/vim3.png)

自动补全
![](https://coding.net/u/TryBin/p/image/git/raw/master/Vim/vim5.png)

正常模式界面
![](https://coding.net/u/TryBin/p/image/git/raw/master/Vim/vim2.png)



## 2.安装
1.终端下执行以下命令
```
git clone https://github.com/TryBin/try-vim.git ~/try-vim

sh ~/try-vim/install.sh
```

然后打开vim，按Esc键进入Normal模式(正常模式),输入以下命令
```
:PluginInstall
```
开始安装插件

## 3.集成的插件
插件名 |作用|项目地址
------|-----|---
NERDTree |树形目录(默认安装)|https://github.com/scrooloose/nerdtree
startify  |启动界面(默认安装)|https://github.com/mhinz/vim-startify
airline  |标签美化(默认安装)|https://github.com/vim-airline/vim-airline
nerdcommenter |注释插件(默认不安装)|https://github.com/scrooloose/nerdcommenter
YouCompleteMe |自动补全(默认不安装)|https://github.com/Valloric/YouCompleteMe
vim-devicons |图标插件(默认不安装)|https://github.com/ryanoasis/vim-devicons
ctrlp.vim|快速查找(默认不安装)|https://github.com/kien/ctrlp.vim
vim-surround|首尾符号替换(默认不安装)|https://github.com/tpope/vim-surround

(1)具体插件的使用说明，请参考其项目主页的项目说明。

(2)未默认安装的插件，若想安装，请打开vimrc文件，

找到对应的插件名称去掉注释符号(")(在call vundle#begin() 代码下面).

然后在vim下执行:PluginInstall命令.
## 4.自定义快捷

快捷键|作用
----|------
q |退出当前窗口
Q |全部退出
Q! |全部强制退出
F3|打开、关闭目录树
[w  |切换窗口
\1……9|  切换到标签\缓冲区(已打开的文件)1……9
[b|上一个缓冲区(已打开的文件)
]b|下一个缓冲区(已打开的文件)

# 二.vim常用快捷键(vim自带)
## 1.移动光标
快捷键|作用
--------|-----------
 w          |    移动光标到下一个单词开头
 e           |    移动光标到下一个单词结尾
 b            |   移动光标到上一个单词.
 0    |           移动光标到本行最开头.
 ^     |          移动光标到本行最开头的字符处.
 $      |         移动光标到本行结尾处.
 A       |        移动光标至行尾并处于“追加”状态，直接编辑
 H     |          移动光标到屏幕的首行.
 M      |         移动光标到屏幕的中间一行.
 L       |        移动光标到屏幕的尾行.
 gg |             移动光标到文档首行.
 G   |            移动光标到文档尾行.
 n G  |           跳至第n行
 ctrl + f    |    向下翻页同 page down.
 ctrl + b     |   向上翻页 同 page up.
 ctrl + d      |  向下翻半页 此比较有用
 ctrl + u       | 向上翻半页 此比较有用
 ctrl + e      |  向下翻一行
 ctrl + y       | 向上一行
 [[        |      转到上一个位于第一列的“{”
 ]]         |     转到下一个位于第一列的“}”
 {           |    转到上一个空行
 }            |   转到下一个空行
 ''  | 两个单引号,移动光标到上一个标记处, 比如用 gd, * 等查找到某个单词后, 再输入此命令则回到上次停留的位置.
 '.  | 一单一点,移动光标到上一次的修改行.
 `. |  一倒引一点, 它移动光标到上一次的修改点.

## 2.插入文本操作
快捷键|作用
------|--------
i | 在光标前 
I|在当前行首 
a|光标后 
A|在当前行尾 
o|在当前行之下新开一行 
O|在当前行之上新开一行 
r|替换当前字符 
R|替换当前字符及其后的字符，直至按ESC键 
s|从当前光标位置处开始，以输入的文本替代指定数目的字符 
S|删除指定数目的行，并以所输入文本代替之 
ncw或nCW|修改指定数目的字 
nCC|修改指定数目的行  

## 3.行内删除操作
快捷键|作用
------|--------
w     |   删除一个单词（一部分不包括空格）  吃掉一个 word
c$     |  删除一行到行尾     
c^      | 删除一行到行头           
x      |  删除一个字符         

## 4.删除操作
快捷键|作用
------|--------
dd      |    删除一行              
dw       |   删除单词到尾部（包括空格）
 daw           |   表示删除光标所在的单词，不管光标在此单词那一位置  
de        |  删除单词到尾部（不包括尾部空格） 
d$   |       删除当前到行尾的所有字符    
d^ 或d0 |        删除当前到行首的所有字符    
J  |  合并当前行   
u   | 撤销上次操作           undo
U | 撤销当前行所有操作  
Ctrl + r  |  恢复undo 前    


## 5.复制黏贴操作
快捷键|作用
------|--------
yy         |  复制当前行整行的内容到vi缓冲区 
yw          | 复制当前光标到单词尾字符的内容到vi缓冲区
y$          | 复制当前光标到行尾的内容到vi缓冲区
y^ 或y0        |  复制当前光标到行首的内容到vi缓冲区
p           | 读取vi缓冲区中的内容，并粘贴到光标当前的位置（不覆盖文件已有的内容）  

## 6.查找操作

快捷键|作用
------|--------
/word      | 从上而下查       
?word     |  从下而上查找    
n        |   定位下一个匹配的   
N         | 定位上一个匹配的  

## 7.搜索替换命令
  快捷键|作用
------|--------
/pattern|从光标开始处向文件尾搜索pattern 
?pattern|从光标开始处向文件首搜索pattern 
n|在同一方向重复上一次搜索命令 
N|在反方向上重复上一次搜索命令 
：s/p1/p2/g|将当前行中所有p1均用p2替代 
：n1,n2s/p1/p2/g|将第n1至n2行中所有p1均用p2替代 
：g/p1/s//p2/g|将文件中所有p1均用p2替换 


## 自动补全功能
自动补全功能需要YouCompleteMe插件，取消.vimrc文件中的YouCompleteMe插件的注释，在Vim中执行:PluginInstall命令安装。(YouCompleteMe 插件较大，需要安装gcc,cmake,需要vim版本在7.5以上)

安装完后执行   ./vim/bundle/YouCompleteMe/.install.py --clang-completer

其他语言自动补全支持，请执行 ./vim/bundle/YouCompleteMe/.install.py -h 命令查看
