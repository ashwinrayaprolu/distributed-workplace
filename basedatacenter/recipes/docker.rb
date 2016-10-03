


execute "Install Docker Environment" do
  user "root"
  cwd "/usr/devenv/share/docker/"
  command "sh Install.sh"
  not_if 'service --status-all | grep "docker"' # Run the above command if docker is not installed
end


remote_directory '/home/docker/multinode/' do
  source 'docker/multinode'
  owner 'docker'
  group 'docker'
  mode '0755'
  action [:delete , :create]
end