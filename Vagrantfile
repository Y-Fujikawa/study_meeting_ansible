# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
  config.vm.box = "ansible-study-meeting"
  config.vm.hostname = "study-meeting"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.33.10"

  # Ansibleを使うための設定
  config.vm.provision "ansible" do |ansible|
    # 指定環境に適用させたい設定が書かれているファイルを指定
    ansible.playbook = "playbook.yml"
    # 設定を適用させるホストが書かれているファイルを指定
    ansible.inventory_path = "hosts"
    ansible.limit = "all"
  end

end
