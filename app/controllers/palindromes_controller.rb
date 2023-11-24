class PalindromesController < ApplicationController
  def index
  end

  def calculate
    n = params[:n].to_i
    @palindromes = palindrome_numbers(n)
  end

  private

  def palindrome_numbers(n)
    palindromes = []

    (1..n).each do |num|
      decimal_palindrome = num.to_s
      binary_palindrome = num.to_s(2)

      if decimal_palindrome == decimal_palindrome.reverse && binary_palindrome == binary_palindrome.reverse
        palindromes << { decimal: num, binary: binary_palindrome }
      end
    end

    palindromes
  end
end