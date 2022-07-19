#
# Cookbook:: chef-ibmc-cookbook
# Resource:: ibmc_user
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

module IbmcCookbook
  class IbmcUser < BaseResource
    resource_name :ibmc_user

    property :username, String
    property :password, String, sensitive: true
    property :role, String, equal_to: %w(Administrator Operator Commonuser NoAccess CustomRole1 CustomRole2 CustomRole3 CustomRole4)
    property :new_username, String
    property :new_password, String, sensitive: true
    property :new_role, equal_to: %w(Administrator Operator Commonuser NoAccess CustomRole1 CustomRole2 CustomRole3 CustomRole4)
    property :locked, [true, false], default: false
    property :enabled, [true, false]
    property :snmpV3_auth_protocol, String
    property :snmpV3_priv_protocol, String
    property :encryption_password, String, sensitive: true

    action :add do
      check_required_properties(:username, :password, :role)

      args = [new_resource.username, new_resource.password, new_resource.role]
      subcmd = Const::Subcmd::ADD_USER.to_cmd(*args)
      call_urest(subcmd)
    end

    action :delete do
      check_required_properties(:username)

      args = [new_resource.username]
      subcmd = Const::Subcmd::DEL_USER.to_cmd(*args)
      call_urest(subcmd)
    end

    action :set do
      check_required_properties(:username)

      arg = build_optional_arg_str(
        '-N': new_resource.username,
        '-NN': new_resource.new_username,
        '-NP': new_resource.new_password,
        '-R': new_resource.new_role,
        '-E': new_resource.enabled,
        '-SAP': new_resource.snmpV3_auth_protocol,
        '-SPP': new_resource.snmpV3_priv_protocol,
        '-SEP': new_resource.encryption_password
      )
      arg += ' -L False' if new_resource.locked
      subcmd = Const::Subcmd::SET_USER.to_cmd(arg)
      call_urest(subcmd)
    end

    action :get do
      arg = build_optional_arg_str(
        '-N': new_resource.username
      )
      subcmd = Const::Subcmd::GET_USER.to_cmd(arg)
      call_urest(subcmd)
    end
  end
end
