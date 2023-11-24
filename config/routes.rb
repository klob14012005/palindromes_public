Rails.application.routes.draw do
  get 'palindromes', to: 'palindromes#index'
  get 'palindromes/calculate', to: 'palindromes#calculate'
  root 'palindromes#index'
end