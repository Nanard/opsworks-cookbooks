#
# Cookbook Name:: glassfish
# Attribute File:: glassfish
#
# Copyright 2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#openInstaller Dry Run Answer File.  This File can be used as input to the openInstaller engine using the -a option.

# unis system user
set_unless[:glassfish3][:systemuser]="glassfish"
#unix system group
set_unless[:glassfish3][:systemgroup]="glassfish"
# fetch_url
set_unless[:glassfish3][:fetch_url]="http://download.java.net/glassfish/3.1.2.2/release/glassfish-3.1.2.2-unix.sh"
#InstallHome.directory.INSTALL_HOME=
set_unless[:glassfish3][:INSTALL_HOME]="/opt/glassfish3"
#License.license.ACCEPT_LICENSE=0
set_unless[:glassfish3][:ACCEPT_LICENSE]="0"
#RegistrationOptions.regoptions.CREATE_NEWACCT=CREATE_NEWACCT
set_unless[:glassfish3][:CREATE_NEWACCT]="CREATE_NEWACCT"
#RegistrationOptions.regoptions.DUMMY_PROP=
set_unless[:glassfish3][:DUMMY_PROP]=""
#RegistrationOptions.regoptions.SKIP_REGISTRATION=SKIP_REGISTRATION
set_unless[:glassfish3][:SKIP_REGISTRATION]="SKIP_REGISTRATION"
#RegistrationOptions.regoptions.USERNAME=
set_unless[:glassfish3][:USERNAME]=""
#RegistrationOptions.regoptions.USERPASSWORD=
set_unless[:glassfish3][:USERPASSWORD]=""
#RegistrationOptions.regoptions.USE_EXISTINGACCT=USE_EXISTINGACCT
set_unless[:glassfish3][:USE_EXISTINGACCT]="USE_EXISTINGACCT"
#SOAccountCreation.accountinfo.COMPANYNAME=
set_unless[:glassfish3][:COMPANYNAME]=""
#SOAccountCreation.accountinfo.COUNTRY=
set_unless[:glassfish3][:COUNTRY]=""
#SOAccountCreation.accountinfo.COUNTRY_DROP_DOWN=
set_unless[:glassfish3][:COUNTRY_DROP_DOWN]=""
#SOAccountCreation.accountinfo.EMAIL=
set_unless[:glassfish3][:EMAIL]=""
#SOAccountCreation.accountinfo.FIRSTNAME=
set_unless[:glassfish3][:FIRSTNAME]=""
#SOAccountCreation.accountinfo.LASTNAME=
set_unless[:glassfish3][:LASTNAME]=""
#SOAccountCreation.accountinfo.PASSWORD=
set_unless[:glassfish3][:PASSWORD]=""
#SOAccountCreation.accountinfo.REENTERPASSWORD=
set_unless[:glassfish3][:REENTERPASSWORD]=""
#glassfish.Administration.ADMIN_PASSWORD=adminadmin
set_unless[:glassfish3][:ADMIN_PASSWORD]="adminadmin"
#glassfish.Administration.ADMIN_PORT=4848
set_unless[:glassfish3][:ADMIN_PORT]="4848"
#glassfish.Administration.ADMIN_USER=admin
set_unless[:glassfish3][:ADMIN_USER]="admin"
#glassfish.Administration.ANONYMOUS=ANONYMOUS
set_unless[:glassfish3][:ANONYMOUS]="ANONYMOUS"
#glassfish.Administration.LOGIN_MODE=true
set_unless[:glassfish3][:LOGIN_MODE]="true"
#glassfish.Administration.HTTP_PORT=8080
set_unless[:glassfish3][:HTTP_PORT]="8081"
# Can be set to anonymous or non_anonymous, to require administrator to log in with user name and password.
# glassfish.Administration.NON_ANONYMOUS=NON_ANONYMOUS
set_unless[:glassfish3][:NON_ANONYMOUS]="NON_ANONYMOUS"
#updatetool.Configuration.ALLOW_UPDATE_CHECK=true
set_unless[:glassfish3][:ALLOW_UPDATE_CHECK]="false"
#updatetool.Configuration.BOOTSTRAP_UPDATETOOL=true
set_unless[:glassfish3][:BOOTSTRAP_UPDATETOOL]="false"
#updatetool.Configuration.PROXY_HOST=
set_unless[:glassfish3][:PROXY_HOST]= ""
#updatetool.Configuration.PROXY_PORT=
set_unless[:glassfish3][:PROXY_PORT]= ""