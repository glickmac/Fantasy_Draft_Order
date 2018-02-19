from random import seed
from random import shuffle
import math

seed(2017)

my_list = ["frank", "andrew", "andrew"]

fish = ["fish"]*int(math.pow(2,2))
mack = ["mack"]*int(math.pow(2,3))
jake = ["jake"]*int(math.pow(2,4))
matt = ["matt"]*int(math.pow(2,5))
cody = ["cody"]*int(math.pow(2,6))
jim = ["jim"]*int(math.pow(2,7))
van = ["van"]*int(math.pow(2,8))
colin = ["colin"]*int(math.pow(2,9))

draft=my_list+fish+mack+jake+matt+cody+jim+van+colin

shuffle(draft)
print(sorted(set(draft), key = draft.index))

def main():
    pass

if __name__ == "__main__":
    main()