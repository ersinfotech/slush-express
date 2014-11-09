slush-express
=============

ERS express generator used gulp

Usage
-----

1. 全局安裝 slush

  ```
  $ npm install -g slush
  ```

1. 刻隆本項目

  ```
  $ git clone git@gitlab.ers.local:generator/slush-express.git
  ```

1. 安裝依賴

  ```
  $ cd slush-express
  $ npm install
  ```

1. 映射到系統全局

  ```
  $ npm link
  ```

1. 在適合的位置，建立項目資料夾

  ```
  $ mkdir ~/awesome-app
  $ cd ~/awesome-app
  ```

1. 運行本項目生成器

  ```
  $ slush express
  ```

1. 回答問題，你已成功建好項目骨架了 XDD

Upgrade
-------

1. 進行git pull即可

  ```
  $ cd slush-express
  $ git pull origin master
  ```

Generators
----------

- **default**
  
  適用于項目初始化，建立項目體架

  ```
  $ slush express
  ```

