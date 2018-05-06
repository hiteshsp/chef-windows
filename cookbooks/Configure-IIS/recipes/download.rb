remote_file "#{node['iis']['docroot']}/pearup.zip" do
    source 'http://localhost:8084/repository/maven-releases/com/dotnet/1.0/dotnet-1.0.zip'
    action :create
    headers({'AUTHORIZATION' => "Basic #{
    Base64.encode64('admin:admin123')}",
    'Content-Type' => 'application/data'
  })
end