require 'aws-sdk'
AWS.config(
    :access_key_id => Env['AWS_ACCESS_KEY_ID'],
    :secret_access_key => Env['AWS_SECRET_ACCESS_KEY']
    )

S3_BUCKET = AWS::S3.new.buckets[ENV['timusic']]
