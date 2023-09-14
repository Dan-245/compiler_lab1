# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.


def split_sentence(sentence):
    words = sentence.split()
    return words


# Input a sentence from the user
input_sentence = input("Enter an English sentence: ")

# Call the split_sentence function to split the sentence
words = split_sentence(input_sentence)

# Output each word on a separate line
for word in words:
    print(word)

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
