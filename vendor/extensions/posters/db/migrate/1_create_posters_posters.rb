class CreatePostersPosters < ActiveRecord::Migration

  def up
    create_table :refinery_posters do |t|
      t.string :name
      t.string :dimensions
      t.date :printed_on
      t.boolean :print
      t.boolean :autographed
      t.integer :photo_id
      t.string :price
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-posters"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/posters/posters"})
    end

    drop_table :refinery_posters

  end

end
