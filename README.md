# config

#### 1. 跳板机挂VPN

在jumpserver中打开文件管理，上传`auth_client`程序到`Defaut/1937xxxx`目录下，打开终端，在`/tmp`路径下可以找到此程序，运行。

```shell
cd /tmp
chmod +x auth_client
./author_client -u 用户名 -p 密码
```

提示认证成功后即可上网



#### 2. 本地ssh连接跳板机

在JumpServer的profile-ssh_key中下载xxx.pem私钥，将其拷贝到`.ssh`目录下，在`/.ssh/config`中添加新的host如下

```
Host HostName lab.os.buaa.edu.cn
        User 1937xxx@root@lab.os.buaa.edu.cn
        Port 2222
        IdentityFile ~/.ssh/1937xxxx-jumpserver.pem
        HostKeyAlgorithms +ssh-rsa
        PubkeyAcceptedKeyTypes +ssh-rsa
```

在终端中输入，连接到跳板机即为成功

```shell
ssh 1937xxxx@lab.os.buaa.edu.cn
```



#### 3. vscode-remote配置

在vscode中`remote-explorer`插件，在sshTargets中选择设置, 找到之前注册了Host的config文件,此后即可远程链接跳板机

![](/home/szy/Desktop/BUAA-OS-2021/ssh.png)



