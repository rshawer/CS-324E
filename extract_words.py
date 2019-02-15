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
    

def main():
    allwords("Sherlock.txt")

main()
