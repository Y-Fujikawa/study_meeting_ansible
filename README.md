# study_meeting_ansible
## 概要
勉強会のワークショップで使用するAnsibeのプロジェクトです。
Vagrantに対してプロビジョニングします。

## 使い方
### 前提
Mac, Homebrewがインストールされていること

### 実施
```
$ brew install python
$ brew install ansible

$ vagrant up --provision
```

### テスト
```
$ bundle install
$ rake spec:192.168.33.30
```
