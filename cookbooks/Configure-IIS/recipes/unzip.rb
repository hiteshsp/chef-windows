windows_zipfile "#{node['iis']['docroot']}/pearup" do
    source "#{node['iis']['docroot']}/pearup.zip"
    action :unzip
end