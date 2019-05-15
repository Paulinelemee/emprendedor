# Declaramos las variables
precio = ARGV[0].to_i
usuarios_normales = ARGV[1].to_i
usuarios_premium = ARGV[2].to_i
usuarios_gratuito = ARGV[3].to_i
gastos = ARGV[4].to_i
utilidad_despues_de_impuesto = 0

# hacemos el calculo
ingreso_normal = (usuarios_normales * precio)
ingreso_premium = (usuarios_premium * precio * 2)
utilidad_antes_de_impuesto = ingreso_normal + ingreso_premium - gastos

# se aplica el impuesto si las utilidades son mayores a 0 
if utilidad_antes_de_impuesto > 0
  utilidad_despues_de_impuesto = utilidad_antes_de_impuesto - (utilidad_antes_de_impuesto * 0.35)
end

# se ve el resultados superior a 0 y negativo
if utilidad_antes_de_impuesto > 0
  puts utilidad_despues_de_impuesto
else
  puts utilidad_antes_de_impuesto
end
