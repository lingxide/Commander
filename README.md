# Commander 0.9 RTM Version

## 简介

Commander  0.9 是一款交换机命令自动化生成工具，可以支持由特定的CSV模版直接生成交换机命令的使用方式。目前已经支持H3C交换机的命令生成，支持设定VLAN、主机名、SVI、链路聚合等数十个功能。

## 依赖关系

### 独立安装

独立安装本程序目前依赖bash 4.3.11(1)、gawk 4.0.1、awk 4.0.1运行，目前经由Tiny Core Linux和Windows-Linux子系统测试通过。

### OVA安装

我们也提供OVA直接导入虚拟机的安装方式，通过封装在Tiny Core Linux中，无需额外关注依赖关系。目前已经经由VMware Workstation 12.0.0测试通过。

## 首次使用

### 编辑模版

我们提供了`template.xlsx`，请根据里面的范例编写相应的自动化脚本，**并最终另存为CSV格式**！

### 独立安装

当您通过独立安装的方式使用本脚本时，无需进行额外的初始化配置。请确保所有脚本文件均已赋予`execute`的权限，如果未赋予，请使用以下命令：

     chmod +x ./Commander/*.sh

随后即可使用以下命令进行使用：

     ./commander.sh {input_csv}

在`output`文件夹中可以找到已经生成好的脚本。

### OVA安装

>> 已知BUG：当导入OVA时弹出磁盘合规性验证失败，请按Retry继续。

#### 前置条件

请确保已经正确安装虚拟机程序，并具备SSH条件。

#### 设置网络

导入OVA包完毕后，请将虚拟机网卡设置到相对应的**Host-Only**网络中，并将本机的**Host-Only**网络设置为`10.0.0.1/24`

#### 上传CSV

通过在计算机中访问共享路径`\\10.0.0.254`,并以用户名`tc`和密码`Cisco123`登入，即可访问到`Commander`目录。

将编写好的CSV文件置于`Commander`目录中，并打开SSH，以用户名`tc`和密码`Cisco123`登入即可。

#### SSH执行转换

连接到SSH后，通过以下命令即可进行交换机命令转换：

```
cd commander
./commander.sh {文件名}
```

随后，通过访问共享路径`Commander`文件夹中的`output`文件夹，即可获得由`Switchname`分割好的脚本。

## Troubleshooting

本项目实际上是由 `Commander.sh` 调用各个命令生成模块，通过匹配AWK生成中间件，并由Bash生成最终脚本的过程。当输入（input）来源有误时，例如CSV文件错误、module不可预知以及其他错误发生时，生成过程将被中止，请查阅`Commander`目录下的隐藏文件`.tmp`。

本程序具有自幂性，在Input来源稳定时输出结果不变。

## 作者

Liao Chong - Branch Master

## License

本程序基于GPLv3进行开源。

## 更新列表

2017/11/18 - 首次发布RTM版本！

- 支持H3C部分型号交换机的命令生成
- 集成了包括生成VLAN、SNMP、SSH、LinkAggr在内的数十个模块
- 支持以不同Sysname生成不同对应脚本