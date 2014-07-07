class CreateTipoUsuarios < ActiveRecord::Migration
  def change
    create_table :tipo_usuarios do |t|
      t.string :tpu_descripcion

      t.timestamps
    end
  end
end
