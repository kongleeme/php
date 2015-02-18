#
# Author:: Seth Chisamore <schisamo@chef.io>
# Author:: Sean OMeara <sean@chef.io>
#
# Copyright:: 2015, Chef Software, Inc. <legal@chef.io>
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

class Chef
  class Resource
    class PhpPearChannel < Chef::Resource::LWRPBase
      self.resource_name = :php_pear_channel
      default_action :discover
      actions :discover, :add, :update, :remove

      attribute :channel_name, kind_of: String, name_attribute: true
      attribute :channel_xml, kind_of: String
      attribute :php_home, kind_of: String
      # TODO: add authenticated channel support
      # attribute :username, :kind_of => String
      # attribute :password, :kind_of => String
    end
  end
end
