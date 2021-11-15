# DLForMolecularPrediction
### Introduction
In wake of success of deep neural networks, one of the earliest chemical analysis jobs, molecular property estimation, has garnered renewed interest. The first query is about comparing learnt molecular models to fingerprinting or descriptions.

### Objective
Our objective is to study a deep learning model that can predict properties for a molecule with no extra input apart from its graphical map representation (SMILES representation). This would essentially mean that the model would be template-free i.e there is no additional information needed apart from the atom-map graph.
Hence, predicting properties for a molecule with this DL model given only the molecule graph, training the DL model (based on D-PMNN). (The dataset have been mentioned below)

### Prediction Script

```
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
```

## Example Prediction CSV

| smiles    | FDA_APPROVED        | CT_TOX              |
| --------- | ------------------- | ------------------- |
| C         | 0.4998233914375305  | 0.5004603862762451  |
| C=C       | 0.4982199966907501  | 0.49478310346603394 |
| C#C       | 0.48037707805633545 | 0.47729843854904175 |
| c1ccccc1  | 0.5105788111686707  | 0.5104421377182007  |
| Cc1ccccc1 | 0.5053300857543945  | 0.5090678930282593  |
| N         | 0.48679855465888977 | 0.4925779700279236  |
| O         | 0.4869031012058258  | 0.4809083938598633  |
| O=C=O     | 0.4705178737640381  | 0.49363192915916443 |
| [H][H]    | 0.5022041201591492  | 0.5016974806785583  |
| N#N       | 0.5101814866065979  | 0.5087893009185791  |
| O=O       | 0.48084789514541626 | 0.5092370510101318  |
| C#[O+]    | 0.48501139879226685 | 0.4863986372947693  |
|           |