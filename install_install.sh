#! /bin/bash
# dsong
echo '一键安装python3.x程序'

#安装环境
yum install vim -y

yum -y install zlib* libffi-devel
yum install gcc* glien* -y 
#下载3.7.1的包
wget https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tgz
#解压包
tar -xvf Python-3.7.1.tgz
mkdir /usr/local/python3 
#进入python 目录
cd Python-3.7.1
#配置参数
./configure --prefix=/usr/local/python3 && make && make install

if test $[python3-V]==0; then echo '安装成功'; else echo'安装出错！';fi

#建立软链接
ln -s /usr/local/python3/bin/python3.7 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3.7 /usr/bin/pip3
PATH=$PATH:/usr/bin/python3
echo '安装完成，输入python3试试'
read -p '回车查看版本' V
python3 -V
