class TestFile < ActiveRecord::Base
  belongs_to :doctype

  attr_accessor :content
  attr_accessible :path, :exectuable, :modifiable, :highlight_syntax

  before_save :save

  # The name of the file including extensions
  def name
    File.basename(self.path)
  end

  # Return the content of the file.
  def content
    @content ||= read_content
  end

  # Moves the file if its path has changed and saves the content.
  def save
    File.rename(
    save_content
  end

  private 

    def full_path
      Rails.root.join(self.path)
    end
    
    # Returns the content of the file if it exists.
    # Otherwise returns nil.
    def read_content
      if File.file?(full_path)
        File.open(full_path) do |f|
          f.read
        end
      end
    end

    # Writes content to the file.
    def save_content
      File.open(full_path, 'w') do |f|
        f.write(content)
      end
    end
end
