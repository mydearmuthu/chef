file "test.txt" do
	action :create
	content "This is my first program"

end
package "git"

file "test1.txt" do
	group "adm"
end

directory "src"

service "firewalld" do
	action :stop
end

yum_package "httpd"

service "httpd" do
	action :start
end
