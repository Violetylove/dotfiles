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
  
  - 配置文件路径为``$HOME\AppData\Local\lf``。

- 全局搜索
  - [`Wox`](https://github.com/Wox-launcher/Wox)和[`Flow.Launcher`](https://github.com/Flow-Launcher/Flow.Launcher)

  - 首先，对于文件检索来所说，Windows索引功能不如`Everything`。所以它们都需要`Everything`的支持，可以使用`Scoop`下载。

  - 对我来说，二者的最大的区别在于UI了，我觉得`Flow.Launcher`好看很多。
  
  - 二者的默认打开快捷键是``Alt+Space``。

  - **闲话：**国产应用`utools`也非常不错，干净、插件丰富。只是我不喜欢罢了

- 平铺式窗口管理器[`GlazeWM`](https://github.com/lars-berger/GlazeWM)
  
  - 它的配置文件路径为``$HOME\.glaze-wm\config.yaml``
  
  - 它真的很优秀，比`komorebi`稳定得多也强大得多。此外`komorebi`还需要结合其他程序才能运作，不好。

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

