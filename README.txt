Assignment 3	

This project uses a given book in the form of a txt file and generates three text files representative of the
vocabulary of said book, a graphical visualization of the frequency of words, and a word cloud using random unique
words from the book. 


extrac_words.py -
	
	Creates: allwords.txt, uniquewords.txt, and wordfrequency.txt

	This python script pulls from the chosen book and creates three text files: allwords.txt, uniquewords.txt,
and wordfrequency.txt. The allwords.txt file contains every word within the book, each written on a new line.
The uniquewords.txt file contains all unique words within the book, each written on a new line. The wordfrequency.txt
file maps the frequency of words to the number of words with that frequency. In order to create these text files, the 
chosen book's .txt file must be added to the script's code body. Then, the script must be run through terminal or a
comparable apparatus. Upon running the .txt files are generated and can be used in the following processing files.


a3_novelvisualization

	This processing file generates a word cloud based on the contents of unique words.txt. In order to run this
program, the file path to the uniquewords.txt file must be included in the processing code body. This can be simplified
by simply placing a copy of the uniquewords.txt file within the processing file folder to access the text document
using a local directory. Hitting play on the processing UI generates the word cloud. Upon pressing the left mouse
button, a new word cloud is generated. 


a3_wordfrequency

	This processing file creates a graphical representation of the frequency of words and the number of words
with those frequencies in the given book. The width of the blocks represents the number of words with that frequency
while the block's position along the y axis represents the word frequency itself. THe steps to run this file are 
the same as the a3_novelvisualization file, except this uses the wordfrequency.txt instead of the uniquewords.txt file.


Sherlock_wordle.png

	This project also includes a wordle cloud png file, which was manually created using the wordle desktop 
application. Steps to produce a simliar file can be found on the wordle home page. 
