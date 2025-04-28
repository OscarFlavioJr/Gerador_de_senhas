require 'securerandom'

def criar_senha(tamanho = 8)
  caracteres = [('a'..'z'), ('A'..'Z'), (0..9), %w[! @ # $ % ^ & * ( ) _ + = -]].map(&:to_a).flatten
  senha = Array.new(tamanho) { caracteres[SecureRandom.random_number(caracteres.length)] }
  senha.join
end

puts "Gerando senha. Por favor, aguarde...\n\nSua senha é:\n\n#{criar_senha}"
