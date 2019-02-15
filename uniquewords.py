import re

def main():
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

main()
    