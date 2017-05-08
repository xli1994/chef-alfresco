name             'alfresco'
maintainer       'Alfresco T&A'
maintainer_email 'enzo.rivello@alfresco.com'
license          'Apache 2.0'
description      'Installs Alfresco Community and Enterprise Edition.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
issues_url       'https://github.com/Alfresco/chef-alfresco/issues'
source_url       'https://github.com/Alfresco/chef-alfresco'
version '0.7.29'

chef_version '~> 12'

supports 'centos', '>= 7.0'
supports 'redhat', '>= 7.0'

# Resolved by Berkshelf, not present in Supermarket or forked
depends 'file'
depends 'maven'
depends 'commons'
depends 'java'
depends 'alfresco-webserver', '~> 0.7.4'
depends 'nginx-hardening', '~> 1.1.0'
depends 'alfresco-appserver', '~> 1.0.0'
depends 'alfresco-utils', '~> 1.0.0'
depends 'alfresco-db', '~> 1.1.0'

# Community cookbooks
depends 'activemq', '>= 1.3.3'
depends 'artifact-deployer', '>= 0.8.18'
depends 'ffmpeg', '>= 0.4.4'
depends 'haproxy', '~> 1.6.6'
depends 'imagemagick', '>= 0.2.3'
depends 'libreoffice', '>= 0.0.2'
depends 'line', '>= 0.6.2'
depends 'openssl', '>= 4.0.0'
depends 'postgresql', '>= 3.4.18'
depends 'swftools', '>= 0.2.4'
depends 'yum-epel'
depends 'yum-atrpms', '>= 0.1.0'
depends 'supervisor', '>= 0.4.12'
depends 'apache_tomcat'
