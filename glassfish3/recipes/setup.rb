
group node[:glassfish3][:systemgroup] do
end

user node[:glassfish3][:systemuser] do
  comment "SUN Glassfish"
  gid node[:glassfish3][:systemgroup]
  home node[:glassfish3][:INSTALL_HOME]
  shell "/bin/sh"
end

remote_file "/tmp/glassfish.sh" do
  owner node[:glassfish3][:systemuser]
  source node[:glassfish3][:fetch_url]
  mode "0744"
end

answer_file = "/tmp/v3-prelude-answer"

template answer_file do
  owner node[:glassfish3][:systemuser]
  source "answer_file.erb"
end

directory node[:glassfish3][:INSTALL_HOME] do
  owner node[:glassfish3][:systemuser]
  group node[:glassfish3][:systemgroup]
  mode "0755"
  action :create
  recursive true
end

execute "install-glassfish" do
  command "/tmp/glassfish.sh -a #{answer_file} -s"
  creates File.join(node[:glassfish3][:INSTALL_HOME],"uninstall.sh")
  user node[:glassfish3][:systemuser]
  action :run
end

file answer_file do
  action :delete
end

template "/etc/init.d/glassfish" do
  source "glassfish-init.d-script.erb"
  mode "0755"
end

service "glassfish" do
  supports :start => true, :restart => true, :stop => true
  action [ :enable, :start ]
end