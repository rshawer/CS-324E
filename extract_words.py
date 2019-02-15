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
    all_words={}
    for line in book:
        line=line.strip()
        line=parseString(line)
        line=line.lower()
        for word in line:
            allwords.append(word)
    return allwords


def main():
    allwords()


main()
