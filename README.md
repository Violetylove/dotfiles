# Winter Things

### 介绍

- 创建此仓库是为了保存一些应用程序的配置文件。
- 各个文件夹放置的就是其配置文件。
- 有问题可联系我。
  - [`哔哩哔哩`](https://space.bilibili.com/200569093)

### Visual Studio Code

- 配置文件和按键映射配置文件

### Windows系统的工具

- `Windows Terminal`和`Power Shell`
  
  - Win10/11自带`cmd`和`Windows Power Shell`,但它们不是我们想要的。我们需要到微软商店`Microsoft Store`自行下载`Windows Terminal`和`Power Shell`。
  
  - **碎碎念：**对于Windows，我们平时所说的终端就是`Windows Terminal`。
  
  - `Windows Terminal`和`Power Shell`的基本配置和操作方法不在此赘述，要讲的是`Power Shell`的配置文件。
    
    - 配置文件可在终端输入``$PROFILE``查看。
    
    - 我们可以在配置文件中定义命令的别名：
      
      ```shell
      # 不带参数的命令可以使用Set-Alias。-Name为别名命令，-Value为原命令
      # musicfox
      Set-Alias -Name wyy -Value musicfox
      
      # 带参数的命令或者有空格的命令，可以使用函数function
      # 启动komorebic
      function kost {
          komorebic start
      }
      ```

- 包管理器 [`Scoop`](https://gitee.com/glsnames/scoop-installer)
  
  - 国内网络问题，需要使用代理或者换源。上述链接就是gitee上一个镜像仓库的项目地址。
  
  - 如果想修改它的路径，可以定义两个环境变量：
    
    ```shel
    #等号左边是变量名，等号右边是变量值。需要到环境变量设置。
    SCOOP=D:\WorkSoftware\scoop
    SCOOP_GLOBAL=D:\WorkSpace\scoop
    ```

- 终端文件管理器[`lf`](https://github.com/gokcehan/lf)
  
  - 配置文件放置在``$HOME\AppData\Local\lf``。

- 全局搜索
  - [`Wox`](https://github.com/Wox-launcher/Wox)和[`Flow.Launcher`](https://github.com/Flow-Launcher/Flow.Launcher)

  - 首先，对于文件检索来所说，Windows索引功能不如`Everything`。所以它们都需要`Everything`的支持，可以使用`Scoop`下载。

  - 对我来说，二者的最大的区别在于UI了，我觉得`Flow.Launcher`好看很多。
  
  - 二者的默认打开快捷键是``Alt+Space``。

  - **闲话：**国产应用`utools`也非常不错，干净、插件丰富。只是我不喜欢罢了

- 平铺式窗口管理器[`GlazeWM`](https://github.com/lars-berger/GlazeWM)
  
  - 它的配置文件路径为``$HOME\.glaze-wm\config.yaml``
  
  - 它真的很优秀，比`komorebi`稳定得多也强大得多。此外`komorebi`还需要结合其他程序才能运作，不好。
  
  - **所以，下面的`whkd`,`komorebi`,`yasb`正式废弃，可以不看了。之后会考虑删除。**

- 全局热键 [`whkd`](https://github.com/LGUG2Z/whkd)
  
  - 配置文件`whkdrc`放到`~\.config`路径下。
  - **省流：**可在终端``scoop install whkd``安装。

- 窗口管理器[`komorebi`](https://github.com/LGUG2Z/komorebi)
  
  - 这个就比较生猛了，配置文件`komorebi.generated.ps1`,`komorebi.ps1`放置在`~`目录下。
    
    - 当然，我推荐修改路径，使其更易管理。定义一个环境变量：
      
      ```shell
       # 在Power Shell的配置文件$PROFILE加入这句
       # 千万别写成 ~\.config\komorebi,会失效的
       $Env:KOMOREBI_CONFIG_HOME = 'C:\Users\用户名\.config\komorebi'
      ```
      
      此时我们的默认路径就变成了``C:\Users\用户名\.config\komorebi``。
  
  - 这个应用只负责管理窗口，热键绑定需要依靠上面的`whkd`或者[`AutoHotKey`](https://www.autohotkey.com/)。二者的区别在于，`whkd`是仅仅一个热键应用，但`AutoHotKey`是一种脚本语言，可以实现Windows下的按键和命令。
  
  - 我用的是`whkd`，比较简洁。
  
  - **省流：**可在终端``scoop install komorebi``安装

- 状态栏[`yasb`](https://github.com/denBot/yasb)
  
  - 克隆项目到本地，配置文件`config.yaml`,`styles.css`放置到`~\.yasb`；
    
    - 又到最喜欢的路径环节了。在我翻翻查查文件时，看到了``src\settings.py``写的东西了。里面可以修改配置路径：
      
      ```python
      # 修改这一句，将配置文件路径修改为 C:\Users\用户名\.config\yasb
       DEFAULT_CONFIG_DIRECTORY = "C:\\Users\\用户名\\.config\\yasb"
      ```

- 安装依赖，终端执行``pip install -r requirements.txt``；

- 我刚开始用的是Python3.11，报了好多错误。后来改用Python3.9一下子就弄好了；

- 最后运行``python src\main.py``。

- **(推荐)**将该文件`main.py`的后缀改为`pyw`，并用`pythonw.exe`程序运行，可以达到后台运行的效果。
  
  - **(最最推荐)**但主程序放置在文件夹中，不方便打开。我们又将文件名设置成一个容易被`Wox`搜索的名字，比如`ya.st.pyw`，至此我们很快打开它。

- 可在`Power Shell`的配置文件`$PROFILE`中添加别名函数，以更快捷地关闭它。
  
  ```shell
  # 添加函数yasp,意为yasb stop
  function{
      # 由于yasb没有提供终端开启或关闭的方法，我们只能杀死pythonw.exe进程。
      # 注意：要去任务管理器查看实际的进程名称，并修改下面的pythonw3.9.exe,否则该命令无效。
      taskkill /f /im pythonw3.9.exe
  }
  ```

- 终端音乐播放器[`musicfox`](https://github.com/go-musicfox/go-musicfox)
  
  - **省流：**终端下载
    
    ```shell
    scoop bucket add go-musicfox https://github.com/go-musicfox/go-musicfox.git
    
    scoop install go-musicfox
    ```

- 终端ASCII艺术字`figlet`

- 使用方法是输入命令``figlet String``，则可以在终端打印`String`的ASCII艺术字。

- **省流：**`scoop`下载`figlet`

### 浏览器插件

- Vimium C

- 青柠起始页

  - [官网](https://limestart.cn/)

