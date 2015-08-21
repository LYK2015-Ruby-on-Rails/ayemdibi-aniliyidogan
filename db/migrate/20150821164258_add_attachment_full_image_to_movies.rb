class AddAttachmentFullImageToMovies < ActiveRecord::Migration
  def self.up
    change_table :movies do |t|
      t.attachment :full_image
    end
  end

  def self.down
    remove_attachment :movies, :full_image
  end
end
