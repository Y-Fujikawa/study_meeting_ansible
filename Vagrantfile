# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box_url = "https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.0.0/centos-6.6-x86_64.box"
  config.vm.box = "study-meeting-ansible"
  # vagrant-hostsupdaterを入れている場合、有効
  # config.vm.hostname = "study-meeting"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  # BOXを追加するマシンによってIPを変える
  config.vm.network "private_network", ip: "192.168.33.30"

  # Ansibleを使うための設定
  config.vm.provision "ansible" do |ansible|
    # 指定環境に適用させたい設定が書かれているファイルを指定
    # いわゆる手順書みたいなもの
    ansible.playbook = "playbook.yml"
    # 設定を適用させるホストが書かれているファイルを指定
    ansible.inventory_path = "hosts"
    # これはおまじないみたいなもの
    ansible.limit = "all"
  end

end
