require 'rspec/expectations'

Given /^un conversor$/ do
  @conversor = Conversor.new
end

When /^le paso (\d+)$/ do |numero|
  @resultado = @conversor.convertir_romano(numero.to_i)
end

Then /^lo convierte a ([A-Z]*)/ do |valor_romano|
  @resultado.should == valor_romano
end

class Conversor

	def convertir_romano(num)

  num_rom = ["I","II","III","IV","V","VI","VII","VIII","IX","X",
            "XI","XII","XIII","XIV"]

  for i in 0...num_rom.length
    return num_rom[ num-1 ];
  end

	end
end
