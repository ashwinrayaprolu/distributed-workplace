

users_manage 'docker' do
  group_name "docker"
  action [:remove, :create]
  data_bag 'users'
end


# Write pho shell script file to filesystem
cookbook_file node['basedatacenter']['private_key']['path'] do
  source 'keys/lamp-server'
  owner 'docker'
  group 'docker'
  mode '0400'
  #chmod 400 ~/.ssh/id_rsa
  # 600 appears to be fine as well 
end