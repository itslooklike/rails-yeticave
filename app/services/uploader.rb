module Uploader
  def self.upload(uploaded_io)
    file_name = SecureRandom.uuid + '.' + Mime::Type.lookup(uploaded_io.content_type).symbol.to_s
    file_path = Rails.root.join('public', 'uploads', file_name)

    unless File.exist?(File.dirname(file_path))
      FileUtils.mkdir_p(File.dirname(file_path))
    end

    File.open(file_path, 'wb') do |file|
      file.write(uploaded_io.read)
    end

    "/uploads/#{file_name}"
  end
end
