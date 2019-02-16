#takes as input a dictionary of all the words
def word_freq(d):

	file = open("wordfrequency.txt", "w+")
	freq_dict = {}

	for key in d:
		if d[key] not in freq_dict:
			freq_dict[d[key]] = 1
		else:
			freq_dict[d[key]] = freq_dict[d[key]] + 1

	lst = list(freq_dict.keys())
	print(lst)

	for elem in lst:
		file.write(str(elem) + ": " + str(freq_dict[elem]) + "\n")

	file.close()

