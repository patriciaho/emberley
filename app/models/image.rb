class Image
  include Mongoid::Document
  extend Dragonfly::Model

  dragonfly_accessor :image

  # Paperclip
  # include Mongoid::Paperclip
  
  # Paperclip hack for after_commit error
  # def self.after_commit(*args, &block)
  #   args.each do |arg|
  #   case arg[:on]
  #     when :destroy
  #       after_destroy &block
  #     end
  #   end
  # end

  #Dragonfly
  field :name, type: String
  field :image_uid,  type: String
  field :image_name, type: String
  

  #Paperclip
  # has_mongoid_attached_file :avatar

  # validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png)

end