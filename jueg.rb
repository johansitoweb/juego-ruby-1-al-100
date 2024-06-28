# Función para generar un número aleatorio dentro de un rango
def generar_numero_aleatorio(min, max)
    return rand(min..max)
  end
  
  # Rango del número a adivinar
  MIN_NUMERO = 1
  MAX_NUMERO = 100
  
  # Número aleatorio a adivinar
  numero_objetivo = generar_numero_aleatorio(MIN_NUMERO, MAX_NUMERO)
  
  puts "¡Bienvenido al juego de adivinanza!"
  puts "Estoy pensando en un número entre #{MIN_NUMERO} y #{MAX_NUMERO}. ¡Intenta adivinarlo!"
  
  adivinanza_correcta = false
  
  while !adivinanza_correcta
    puts "Ingresa tu adivinanza:"
    adivinanza = gets.chomp.to_i
  
    if adivinanza == numero_objetivo
      puts "¡Felicidades! ¡Adivinaste el número correcto!"
      adivinanza_correcta = true
    elsif adivinanza < numero_objetivo
      puts "El número a adivinar es mayor. ¡Intenta nuevamente!"
    else
      puts "El número a adivinar es menor. ¡Intenta nuevamente!"
    end
  end
  