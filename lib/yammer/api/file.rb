# frozen_string_literal: true

module Yammer
  module Api
    # @see https://developer.yammer.com/docs/upload-files-into-yammer-groups
    # @api_path https://filesng.yammer.com/v4/uploadSmallFile
    # @rate_limited Yes
    # @authentication Requires user context
    # @raise  [Yammer::Error::Unauthorized] Error raised when supplied user credentials are not valid.
    # @return [Yammer::ApiResponse]
    # @param network_id [Long]
    # @param target_type [String] The type of upload, specify GROUP or PRIVATE_MESSAGE. If uploading to All Company group that has 'company' as the group feed id specify ALL_COMPANY or for networks that have a numeric feed id for All Company group specify GROUP.
    # @param filename [String]
    # @param file [File] File that needs to be uploaded into Yammer. Max file size is 4MB
    # @param [Hash] opts options for file upload
    # @option opts [Long] :fileid The id of an existing file for version upload. Absent for a new file.
    # @option opts [Integer] :group_id
    # @option opts [String] :thread_id
    module File
      def upload_small_file(network_id, target_type, filename, file, opts = {})
        params = {
          network_id: network_id,
          target_type: target_type,
          filename: filename,
          file: file,
        }
        post('/v4/uploadSmallFile', opts.merge(params), site: 'https://filesng.yammer.com')
      end
    end
  end
end
