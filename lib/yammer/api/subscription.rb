# Copyright (c) Microsoft Corporation
# All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License"); 
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 
#
# THIS CODE IS PROVIDED *AS IS* BASIS, WITHOUT WARRANTIES OR 
# CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING 
# WITHOUT LIMITATION ANY IMPLIED WARRANTIES OR CONDITIONS OF TITLE,
# FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABLITY OR NON-INFRINGEMENT. 

# See the Apache Version 2.0 License for specific language governing
# permissions and limitations under the License.

module Yammer
  module Api
    module Subscription

      # @see https://developer.yammer.com/
      # @api_path /api/v1/subscriptions/
      # @rate_limited Yes
      # @authentication Requires user context
      # @raise  [Yammer::Error::Unauthorized] Error raised when supplied user credentials are not valid.
      # @return [Yammer::ApiResponse]
      # @param [Integer] id
      # @param [String]  type
      def create_subscription(type, id)
        post('/api/v1/subscriptions', :target_id => id, :target_type => type)
      end
    end
  end
end
