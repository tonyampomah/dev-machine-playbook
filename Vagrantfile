Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Hello"

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "tranphuquy19/ubuntu-20.04-desktop"
  end

  config.vm.define "archlinux" do |archlinux|
    archlinux.vm.box = "archlinux/archlinux"
  end
end
