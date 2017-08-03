import statistics
from math import ceil
channel = open('med_num.txt').read().split()
x =statistics.median(map(int,channel))
print(ceil(x))
