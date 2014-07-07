# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140624044640) do

  create_table "asistencia_compras", force: true do |t|
    t.datetime "asc_fecha"
    t.integer  "asc_comision",          precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "trabajador_seccion_id", precision: 38, scale: 0
    t.integer  "compra_id",             precision: 38, scale: 0
  end

  create_table "auditoria", id: false, force: true do |t|
    t.string   "aud_trans", limit: 1
    t.integer  "aud_valor", limit: 6,  precision: 6, scale: 0
    t.string   "aud_user",  limit: 20
    t.datetime "aud_fecha"
  end

  create_table "bodega_pedidos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bodega_id",  precision: 38, scale: 0
    t.integer  "pedido_id",  precision: 38, scale: 0
    t.integer  "estado_id",  precision: 38, scale: 0
  end

  create_table "bodegas", force: true do |t|
    t.integer  "bod_rut",       precision: 38, scale: 0
    t.string   "bod_rs"
    t.string   "bod_direccion"
    t.integer  "bod_numero",    precision: 38, scale: 0
    t.integer  "bod_telefono",  precision: 38, scale: 0
    t.string   "bod_mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargo_trabajadors", force: true do |t|
    t.datetime "cat_alta"
    t.datetime "cat_baja"
    t.integer  "cat_permiso",          precision: 38, scale: 0
    t.integer  "cat_base",             precision: 38, scale: 0
    t.integer  "cat_porcentaje",       precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "trabajador_id",        precision: 38, scale: 0
    t.integer  "estado_habilitado_id", precision: 38, scale: 0
    t.integer  "tipo_trabajador_id",   precision: 38, scale: 0
  end

  create_table "clientes", force: true do |t|
    t.integer  "cli_rut",       precision: 38, scale: 0
    t.string   "cli_nombre"
    t.string   "cli_apellidop"
    t.string   "cli_apellidom"
    t.integer  "cli_telefono",  precision: 38, scale: 0
    t.string   "cli_direccion"
    t.integer  "cli_numero",    precision: 38, scale: 0
    t.string   "cli_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compras", force: true do |t|
    t.integer  "com_cant",       precision: 38, scale: 0
    t.integer  "com_total",      precision: 38, scale: 0
    t.integer  "com_cuota",      precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cliente_id",     precision: 38, scale: 0
    t.integer  "tipo_pago_id",   precision: 38, scale: 0
    t.integer  "tipo_compra_id", precision: 38, scale: 0
  end

  create_table "comunas", force: true do |t|
    t.string   "com_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "region_id",  precision: 38, scale: 0
  end

  create_table "despachos", force: true do |t|
    t.datetime "desp_fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehiculo_id",        precision: 38, scale: 0
    t.integer  "trabajador_id",      precision: 38, scale: 0
    t.integer  "compra_id",          precision: 38, scale: 0
    t.integer  "comuna_id",          precision: 38, scale: 0
    t.integer  "estado_despacho_id", precision: 38, scale: 0
  end

  create_table "detalle_compras", force: true do |t|
    t.integer  "dec_cantidad",        precision: 38, scale: 0
    t.integer  "dec_uni",             precision: 38, scale: 0
    t.integer  "dec_total",           precision: 38, scale: 0
    t.integer  "dec_descuento",       precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "producto_seccion_id", precision: 38, scale: 0
    t.integer  "compra_id",           precision: 38, scale: 0
  end

  create_table "detalle_pedidos", force: true do |t|
    t.integer  "dep_cant",           precision: 38, scale: 0
    t.integer  "dep_precio",         precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "producto_bodega_id", precision: 38, scale: 0
    t.integer  "pedido_id",          precision: 38, scale: 0
  end

  create_table "estado_despachos", force: true do |t|
    t.string   "ede_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estado_habilitados", force: true do |t|
    t.string   "esh_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", force: true do |t|
    t.string   "est_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "local_pedidos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "local_id",   precision: 38, scale: 0
    t.integer  "pedido_id",  precision: 38, scale: 0
    t.integer  "estado_id",  precision: 38, scale: 0
  end

  create_table "locals", force: true do |t|
    t.integer  "loc_rut",       precision: 38, scale: 0
    t.string   "loc_rs"
    t.string   "loc_direccion"
    t.integer  "loc_numero",    precision: 38, scale: 0
    t.integer  "loc_telefono",  precision: 38, scale: 0
    t.string   "loc_mail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comuna_id",     precision: 38, scale: 0
    t.integer  "trabajador_id", precision: 38, scale: 0
  end

  create_table "marcas", force: true do |t|
    t.string   "mar_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modelos", force: true do |t|
    t.string   "mod_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "marca_id",        precision: 38, scale: 0
  end

  create_table "pago_compras", force: true do |t|
    t.integer  "pag_cuota",  precision: 38, scale: 0
    t.datetime "pag_fecha"
    t.datetime "pag_venc"
    t.integer  "pag_estado", precision: 38, scale: 0
    t.integer  "pag_monto",  precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tarjet_id",  precision: 38, scale: 0
    t.integer  "compra_id",  precision: 38, scale: 0
  end

  create_table "pedidos", force: true do |t|
    t.datetime "ped_fecha"
    t.integer  "ped_total",     precision: 38, scale: 0
    t.integer  "ped_canttot",   precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "trabajador_id", precision: 38, scale: 0
    t.integer  "proveedor_id",  precision: 38, scale: 0
  end

  create_table "producto_bodegas", force: true do |t|
    t.integer  "prb_cant",      precision: 38, scale: 0
    t.datetime "prb_fecha"
    t.integer  "prb_preciouni", precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "producto_id",   precision: 38, scale: 0
    t.integer  "bodega_id",     precision: 38, scale: 0
  end

  create_table "producto_seccions", force: true do |t|
    t.integer  "prs_cant",           precision: 38, scale: 0
    t.datetime "prs_fecha"
    t.integer  "prs_preciouni",      precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "producto_bodega_id", precision: 38, scale: 0
    t.integer  "seccion_local_id",   precision: 38, scale: 0
  end

  create_table "productos", force: true do |t|
    t.string   "pro_nombre"
    t.string   "pro_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_producto_id", precision: 38, scale: 0
  end

  create_table "proveedors", force: true do |t|
    t.integer  "prov_rut",       precision: 38, scale: 0
    t.string   "prov_nombre"
    t.string   "prov_apellidop"
    t.string   "prov_apellidom"
    t.integer  "prov_telefono",  precision: 38, scale: 0
    t.string   "prov_direccion"
    t.integer  "prov_numero",    precision: 38, scale: 0
    t.string   "prov_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "reg_nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seccion_locals", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "local_id",   precision: 38, scale: 0
    t.integer  "seccion_id", precision: 38, scale: 0
  end

  create_table "seccions", force: true do |t|
    t.string   "sec_seccion"
    t.string   "sec_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tarjets", force: true do |t|
    t.integer  "tar_serie",       precision: 38, scale: 0
    t.integer  "tar_verificador", precision: 38, scale: 0
    t.datetime "tar_expira"
    t.integer  "tar_estado",      precision: 38, scale: 0
    t.datetime "tar_cobro"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_tarjet_id",  precision: 38, scale: 0
    t.integer  "cliente_id",      precision: 38, scale: 0
  end

  create_table "tipo_compras", force: true do |t|
    t.string   "tco_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_pagos", force: true do |t|
    t.string   "tpp_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_productos", force: true do |t|
    t.string   "tip_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_tarjets", force: true do |t|
    t.string   "tta_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_trabajadors", force: true do |t|
    t.string   "tpt_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_turnos", force: true do |t|
    t.string   "ttu_descripcio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_usuarios", force: true do |t|
    t.string   "tpu_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trabajador_seccions", force: true do |t|
    t.datetime "trs_fechaini"
    t.datetime "trs_fechafin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seccion_local_id", precision: 38, scale: 0
    t.integer  "trabajador_id",    precision: 38, scale: 0
    t.integer  "turno_id",         precision: 38, scale: 0
  end

  create_table "trabajadors", force: true do |t|
    t.integer  "tra_rut",        precision: 38, scale: 0
    t.string   "tra_nombre"
    t.string   "tra_apellidop"
    t.string   "tra_apellidom"
    t.datetime "tra_nacimiento"
    t.integer  "tra_telefono",   precision: 38, scale: 0
    t.string   "tra_direccion"
    t.integer  "tra_numero",     precision: 38, scale: 0
    t.string   "tra_email"
    t.string   "tra_sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turnos", force: true do |t|
    t.string   "tur_horario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_turno_id", precision: 38, scale: 0
  end

  create_table "usuarios", force: true do |t|
    t.string   "usu_nombre"
    t.string   "usu_password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_usuario_id",      precision: 38, scale: 0
    t.integer  "cargo_trabajador_id",  precision: 38, scale: 0
    t.integer  "estado_habilitado_id", precision: 38, scale: 0
  end

  create_table "vehiculos", force: true do |t|
    t.string   "veh_patente"
    t.string   "veh_capacidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "modelo_id",     precision: 38, scale: 0
  end

  add_foreign_key "asistencia_compras", "compras", name: "fk_asistencia_compra_compra"
  add_foreign_key "asistencia_compras", "trabajador_seccions", name: "fk_asistencompras_trabajadsecc"

  add_foreign_key "bodega_pedidos", "bodegas", name: "fk_bodega_pedido_bodega"
  add_foreign_key "bodega_pedidos", "estados", name: "fk_bodega_pedido_estado"
  add_foreign_key "bodega_pedidos", "pedidos", name: "fk_bodega_pedido_pedido"

  add_foreign_key "cargo_trabajadors", "estado_habilitados", name: "fkcargotrabaj_estadohabili"
  add_foreign_key "cargo_trabajadors", "tipo_trabajadors", name: "fk_cargotrabajador_tipotraba"
  add_foreign_key "cargo_trabajadors", "trabajadors", name: "fk_cargo_trabajador_trabajador"

  add_foreign_key "compras", "clientes", name: "fk_compras_cliente"
  add_foreign_key "compras", "tipo_compras", name: "fk_compras_tipo_compra"
  add_foreign_key "compras", "tipo_pagos", name: "fk_compras_tipo_pago"

  add_foreign_key "comunas", "regions", name: "fk_comunas_regions"

  add_foreign_key "despachos", "compras", name: "fk_despacho_compra"
  add_foreign_key "despachos", "comunas", name: "fk_despacho_comuna"
  add_foreign_key "despachos", "estado_despachos", name: "fk_despacho_estado_despacho"
  add_foreign_key "despachos", "trabajadors", name: "fk_despacho_trabajador"
  add_foreign_key "despachos", "vehiculos", name: "fk_despacho_vehiculo"

  add_foreign_key "detalle_compras", "compras", name: "fk_detalle_compras_compra"
  add_foreign_key "detalle_compras", "producto_seccions", name: "fk_detalle_compras_producsecci"

  add_foreign_key "detalle_pedidos", "pedidos", name: "fk_detalle_pedido_pedido"
  add_foreign_key "detalle_pedidos", "producto_bodegas", name: "fk_detalpedido_productbodega"

  add_foreign_key "local_pedidos", "estados", name: "fk_local_pedido_estado"
  add_foreign_key "local_pedidos", "locals", name: "fk_local_pedido_local"
  add_foreign_key "local_pedidos", "pedidos", name: "fk_local_pedido_pedido"

  add_foreign_key "locals", "comunas", name: "fk_local_comuna"
  add_foreign_key "locals", "trabajadors", name: "fk_local_trabajador"

  add_foreign_key "modelos", "marcas", name: "fk_modelos_marcas"

  add_foreign_key "pago_compras", "compras", name: "fk_pago_compra_compra"
  add_foreign_key "pago_compras", "tarjets", name: "fk_pago_compra_tarjeta"

  add_foreign_key "pedidos", "proveedors", name: "fk_pedido_proveedor"
  add_foreign_key "pedidos", "trabajadors", name: "fk_pedido_trabajador"

  add_foreign_key "producto_bodegas", "bodegas", name: "fk_producto_bodega_bodega"
  add_foreign_key "producto_bodegas", "productos", name: "fk_producto_bodega_producto"

  add_foreign_key "producto_seccions", "producto_bodegas", name: "fk_productseccion_producbodega"

  add_foreign_key "productos", "tipo_productos", name: "fk_productos_tipo_productos"

  add_foreign_key "seccion_locals", "locals", name: "fk_seccion_local_local"
  add_foreign_key "seccion_locals", "seccions", name: "fk_seccion_local_seccion"

  add_foreign_key "tarjets", "clientes", name: "fk_tarjeta_cliente"
  add_foreign_key "tarjets", "tipo_tarjets", name: "fk_tarjeta_tipo_tarjeta"

  add_foreign_key "trabajador_seccions", "seccion_locals", name: "fk_trabajador_seccion_seclocal"
  add_foreign_key "trabajador_seccions", "trabajadors", name: "fk_trabajador_seccion_trabaja"
  add_foreign_key "trabajador_seccions", "turnos", name: "fk_trabajador_seccion_turno"

  add_foreign_key "turnos", "tipo_turnos", name: "fk_turnos_tipo_turnos"

  add_foreign_key "usuarios", "cargo_trabajadors", name: "fk_usuario_cargo_trabajador"
  add_foreign_key "usuarios", "estado_habilitados", name: "fk_usuario_estado_habilitados"
  add_foreign_key "usuarios", "tipo_usuarios", name: "fk_usuario_tipo_usuario"

  add_foreign_key "vehiculos", "modelos", name: "fk_vehiculos_modelos"

end
