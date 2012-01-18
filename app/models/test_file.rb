# A represntation of a file in the database associated with a file
# in the filesystem.
class TestFile < ActiveRecord::Base
  belongs_to :doctype

  attr_accessor :content, :name
  attr_accessible :name, :exectuable, :modifiable, :highlight_syntax

  after_find :store_original_values
  before_save :save

  # The extension of this file.
  # This is gotten from the doctype.
  def extension
    self.doctype.extension
  end

  # Return the content of the file.
  def content
    @content ||= read_content
  end

  # Moves the file if its path has changed and saves the content.
  def save
    #File.rename(
    save_content
  end

  private 
    # stores the original values of name and path to compare and 
    # on save and check if the file needs to be renamed.
    def store_original_values
      @original_name = @name
      @original_path = path
    end

    def full_path
      Rails.root.join(self.path, name, extension)
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
