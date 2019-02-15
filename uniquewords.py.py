def main():
  filename = input("Enter a filename: ").strip()
  infile = open(filename, "r")
  outfile = open("uniquewords.txt", "w")
 
  wordCount = {}
  for line in infile:
    processLine(line.lower(), wordCount)

  pairs = list(wordCount.items())
  items = [[x,y] for (y, x) in pairs]
  items.sort()
  
  for i in range(len(items) - 1, len(items) - 11, -1):
    print(items[i][1])
    #outfile.write("Hello")
    outfile.write(items[i][1] + "\n")
    #print(items[i][1] + "\t\t" + str(items[i][0]))
  outfile.close()
  infile.close()

def processLine(line, wordCount):
  line = replacePunctuations(line)
  words = line.split()
  for word in words:
    if word in wordCount:
      wordCount[word] += 1
    else:
      wordCount[word] = 1

def replacePunctuations(line):
  for ch in line:
    if ch in "~@.,":
      line = line.replace(ch, " ")
  return line

main()
    