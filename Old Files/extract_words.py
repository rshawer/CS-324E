import re

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

def processLine(line, wordCount):
  line = replacePunctuations(line)
  #words = line.split()
  for word in line:
    if word in wordCount:
      wordCount[word] += 1
    else:
      wordCount[word] = 1

def replacePunctuations(line):
  line = re.findall("[a-z]+", line)
  '''
  for ch in line:

  
    if ch not in "":
      line = line.replace(ch, " ")
    '''
  return line

def main():
    allwords("Sherlock.txt")
    filename = input("Enter a filename: ").strip()
    infile = open(filename, "r", encoding='utf8')
    outfile = open("uniquewords.txt", "w")
    i = 0
    wordCount = {}
    #print(type(wordCount))
    for line in infile:
      processLine(line.lower(), wordCount)
    for word in wordCount:
      outfile.write(word+"\n")
      #print(wordCount)
  #pairs = list(wordCount.keys())
  #print(pairs)
  #items = [[x,y] for (y, x) in pairs]
  #items.sort()
    '''
    for i in range(len(items) - 1, len(items) - 11, -1):
      print(items[i][1])
      outfile.write(items[i][1] + "\n")
    '''
    outfile.close()
    infile.close()
    word_freq(wordCount)

main()
