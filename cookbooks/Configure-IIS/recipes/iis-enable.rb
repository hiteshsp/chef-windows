# iis_site 'Default Web Site' do
#     action [:stop, :delete]
# end

iis_pool 'pearup' do
    action :add
    runtime_version "4.0"
    pipeline_mode :Classic
end

iis_site 'Pearup' do
    protocol :http
    port 8090
    path "#{node['iis']['docroot']}/pearup/Dotnet"
    action [:add,:start]
    application_pool 'pearup'    
end