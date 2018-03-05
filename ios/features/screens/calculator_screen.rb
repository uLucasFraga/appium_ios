# !/usr/bin/env ruby

class CalculatorScreen
  def initialize
    @first_field = 'apple_first_input'
    @second_field = 'apple_second_input'
    @add_button = 'apple-sum-button'
    @sub_button = 'apple-subtract-button'
    @mult_button = 'apple-multiply-button'
    @div_button = 'apple-divide-button'
    @result = 'apple_result_text'
  end

  def home_verify
    wait_for_element(id: @result)
  end

  def add(one, two)
    wait_for_element(id: @add_button)
    find_element(id: @first_field).send_keys(one)
    find_element(id: @second_field).send_keys(two)
    wait_for_click(id: @add_button)
  end

  def sub(one, two)
    wait_for_element(id: @sub_button)
    find_element(id: @first_field).send_keys(one)
    find_element(id: @second_field).send_keys(two)
    wait_for_click(id: @sub_button)
  end

  def mult(one, two)
    wait_for_element(id: @mult_button)
    find_element(id: @first_field).send_keys(one)
    find_element(id: @second_field).send_keys(two)
    wait_for_click(id: @mult_button)
  end

  def div(one, two)
    wait_for_element(id: @div_button)
    find_element(id: @first_field).send_keys(one)
    find_element(id: @second_field).send_keys(two)
    wait_for_click(id: @div_button)
  end
end
