# Encoding: utf-8
# ASP.NET Core Buildpack
# Copyright 2014-2016 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require_relative 'clidriver.rb'

module AspNetCoreBuildpack
  $cliinstall=false   
   
   class OptionalComponents
     def initialize(build_dir, shell, out, optlCpts)
        #parse_vcap_services(vcap_services)
        install_optional_components(build_dir, shell, out,optlCpts)
     end
     
     def install_optional_components(build_dir, shell, out, optlCpts)
        if optlCpts[:ibmdb].eql?('true')
          puts("calling cliinstall \n") 
          Clidriver.new(build_dir, shell, out)
        end
     end

    # def parse_vcap_services(vcap_services)
     #  unless vcap_services.nil?
      #   vcap_services.each do |service_type, service_data|
       #    puts("inside vcap_services parsing, service_type =  #{service_type}")   
        #   if 'dashDB'.eql?(service_type)
         #    $cliinstall = true 
          #   puts("service_type is dashDB and set to cliinstall = #{$cliinstall} \n ")
           #end
         #end
       #end
      #end
   end
end 
