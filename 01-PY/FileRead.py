highestscore = 0

result_f = open("/Users/SanejTej/Documents/06-GitRepos/SanejGit/DataSciencePlayGround/01-PY/Scores.txt")

for line in result_f:
    if line > highestscore:
        highestscore = line
result_f.close()
print("The higest score was:")
print(highestscore)