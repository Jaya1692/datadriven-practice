from collections import Counter;
def char_freq(s):
  return dict (Counter(s))




def char_count(s):
 counts = {}
 for ch in s:
   counts[ch] = counts.get(ch,0)+1
 return counts 
 print(char_count(""))  #{}

 
