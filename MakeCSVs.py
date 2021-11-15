import json
import csv
from os import listdir
from os.path import isfile, join

# Absolute path of directory (Change according to local machine)
location='/Users/saurav/Desktop/Sem7/CLD411/project_code/chemprop/'

# Extract my molecules for prediction
smiles=list(csv.reader(open(location+'MyMolecules.csv')))[0]

# Get all preds csv files
location += 'N/'
mypath = "./N"
dataset_list=[f for f in listdir(mypath) if isfile(join(mypath, f))]
try:
    dataset_list.remove('.DS_Store')
except Exception as e:
    pass

# Prediction of my molecules and writing results to csv file
for datafile in dataset_list:
    data=[]
    datafile=location+datafile
    try:
        r = list(csv.reader(open(datafile)))
        data.append(r[0])
        num_cols=len(r[0])
        for molecule in smiles:
            l = [""]*num_cols
            l[0] = molecule
            data.append(l)
        with open(datafile, "w") as f:
            writer = csv.writer(f)
            writer.writerows(data)
    except Exception as e:
        print('Some problem in ', datafile)
        print(e)

