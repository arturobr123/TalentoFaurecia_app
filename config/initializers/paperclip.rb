Paperclip::Attachment.default_options[:url] = 'https://s3.amazonaws.com/' + ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'