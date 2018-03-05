Dado('que eu esteja na tela de calculo') do
  tela_calculator.home_verify
end

Quando('eu fizer um calculo de adição') do
  tela_calculator.add('100', '100')
end

Entao('eu verifico o resultado da adição com sucesso') do
  @result = find_element(:id, 'apple_result_text')
  expect(@result.text)
    .to include '200'
end


Quando("eu fizer um calculo de subtração") do
  tela_calculator.sub('100', '50')
end

Entao("eu verifico o resultado da subtração com sucesso") do
  @result = find_element(:id, 'apple_result_text')
  expect(@result.text)
    .to include '50'
end

Quando("eu fizer um calculo de multiplicação") do
  tela_calculator.mult('10', '10')
end

Entao("eu verifico o resultado da multiplicação com sucesso") do
  @result = find_element(:id, 'apple_result_text')
  expect(@result.text)
    .to include '100'
end

Quando("eu fizer um calculo de divisão") do
  tela_calculator.div('100', '10')
end

Entao("eu verifico o resultado da divisão com sucesso") do
  @result = find_element(:id, 'apple_result_text')
  expect(@result.text)
    .to include '10'
end