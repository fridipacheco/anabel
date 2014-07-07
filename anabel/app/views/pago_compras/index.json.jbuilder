json.array!(@pago_compras) do |pago_compra|
  json.extract! pago_compra, :id, :pag_cuota, :pag_fecha, :pag_venc, :pag_estado, :pag_monto
  json.url pago_compra_url(pago_compra, format: :json)
end
