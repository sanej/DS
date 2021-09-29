import os
THIS_FOLDER = os.path.dirname(os.path.abspath(__file__))
my_file = os.path.join(THIS_FOLDER, 'Scores.txt')

highestscore = 0

#result_f = open("/Users/SanejTej/Documents/06-GitRepos/SanejGit/DataSciencePlayGround/01-PY/Scores.txt")
result_f = open(my_file)

for line in result_f:
    line = line.split(" ")
    score = float(line[1])
    if score > highestscore:
        highestscore = score
result_f.close()
print("The higest score was:")
print(highestscore)