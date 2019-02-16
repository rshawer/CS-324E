def parseString (st):
  s=""
  for i in range (len(st)):
    if (st[i].isalpha()):
      s+=st[i]
    elif (st[i].isspace()):
      s+=st[i]     
    elif (st[i]=="'") and (i!=len(st)-1) and (st[i+1]!='s') and (st[i+1]!=" "):
      s+=st[i]
    else:
      s+=" "
  return s

def allwords(file):
    allwords=[]
    book = open(file,"r",encoding='utf8')
    out_file = open ("allwords.txt", "w+")
    for line in book:
        line=line.strip()
        line=parseString(line)
        line=line.lower()
        line=line.split()
        for word in line:
            allwords.append(word)
    for vocab in allwords:
      out_file.write(vocab+"\n")

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


def main():
    allwords("Sherlock.txt")
    

main()
