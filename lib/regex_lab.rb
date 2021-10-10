require 'pry'

word = "word"
word2 = "apple"

text = "unassuming ambiguous understanding pomp circumstance uninteresting uncompromising grouchy corollary"

phone = "586-260-5823"


def starts_with_a_vowel?(word)
    word[0].match(/[aeiouAEIOU]/) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/\bun\w+ing\b/)
end

puts words_starting_with_un_and_ending_with_ing(text)

def words_five_letters_long(text)
    text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    text.match(/^[A-Z].+[\.\?\!]$/) ? true : false
end

def valid_phone_number?(phone)
    # phone.match(/\(?\d{3}\)?\s?\d{3}-?\s?\d{4}/) ? true : false
    phone.match(/([0-9] *){10}|(\([0-9-]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/)
end
