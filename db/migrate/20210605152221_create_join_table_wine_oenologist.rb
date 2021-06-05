class CreateJoinTableWineOenologist < ActiveRecord::Migration[5.2]
  def change
    create_join_table :wines, :oenologists do |t|
      # t.index [:wine_id, :oenologist_id]
      # t.index [:oenologist_id, :wine_id]
    end
  end
end
