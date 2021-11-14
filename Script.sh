#!/bin/sh
cd Desktop/Sem7/CLD411/project_code/chemprop
source activate chemprop

python train.py --data_path data/bace.csv --dataset_type classification --save_dir bace_checkpoints
python train.py --data_path data/bbbp.csv --dataset_type classification --save_dir bbbp_checkpoints
python train.py --data_path data/chembl.csv --dataset_type classification --save_dir chembl_checkpoints
python train.py --data_path data/clintox.csv --dataset_type classification --save_dir clintox_checkpoints
python train.py --data_path data/delaney.csv --dataset_type regression --save_dir delaney_checkpoints
python train.py --data_path data/freesolv.csv --dataset_type regression --save_dir freesolv_checkpoints
python train.py --data_path data/hiv.csv --dataset_type classification --save_dir hiv_checkpoints
python train.py --data_path data/lipo.csv --dataset_type regression --save_dir lipo_checkpoints
python train.py --data_path data/muv.csv --dataset_type classification --save_dir muv_checkpoints
python train.py --data_path data/pcba.csv --dataset_type classification --save_dir pcba_checkpoints
python train.py --data_path data/pdbbind_core.csv --dataset_type regression --save_dir pdbbind_core_checkpoints
python train.py --data_path data/pdbbind_full.csv --dataset_type regression --save_dir pdbbind_full_checkpoints
python train.py --data_path data/pdbbind_refined.csv --dataset_type regression --save_dir pdbbind_refined_checkpoints
python train.py --data_path data/qm7.csv --dataset_type regression --save_dir qm7_checkpoints
python train.py --data_path data/qm8.csv --dataset_type regression --save_dir qm8_checkpoints
python train.py --data_path data/qm9.csv --dataset_type regression --save_dir qm9_checkpoints
python train.py --data_path data/sider.csv --dataset_type classification --save_dir sider_checkpoints
python train.py --data_path data/tox21.csv --dataset_type classification --save_dir tox21_checkpoints
python train.py --data_path data/toxcast.csv --dataset_type classification --save_dir toxcast_checkpoints

python predict.py --test_path data/bace.csv --checkpoint_dir bace_checkpoints --preds_path bace_preds.csv
python predict.py --test_path data/clintox.csv --checkpoint_dir clintox_checkpoints --preds_path clintox_preds.csv
python predict.py --test_path data/hiv.csv --checkpoint_dir hiv_checkpoints --preds_path hiv_preds.csv
python predict.py --test_path data/pcba.csv --checkpoint_dir pcba_checkpoints --preds_path pcba_preds.csv
python predict.py --test_path data/pdbbind_refined.csv --checkpoint_dir pdbbind_refined_checkpoints --preds_path pdbbind_refined_preds.csv
python predict.py --test_path data/qm9.csv --checkpoint_dir qm9_checkpoints --preds_path qm9_preds.csv
python predict.py --test_path data/toxcast.csv --checkpoint_dir toxcast_checkpoints --preds_path toxcast_preds.csv
python predict.py --test_path data/bbbp.csv --checkpoint_dir bbbp_checkpoints --preds_path bbbp_preds.csv
python predict.py --test_path data/delaney.csv --checkpoint_dir delaney_checkpoints --preds_path delaney_preds.csv
python predict.py --test_path data/lipo.csv --checkpoint_dir lipo_checkpoints --preds_path lipo_preds.csv
python predict.py --test_path data/pdbbind_core.csv --checkpoint_dir pdbbind_core_checkpoints --preds_path pdbbind_core_preds.csv
python predict.py --test_path data/qm7.csv --checkpoint_dir qm7_checkpoints --preds_path qm7_preds.csv
python predict.py --test_path data/sider.csv --checkpoint_dir sider_checkpoints --preds_path sider_preds.csv
python predict.py --test_path data/chembl.csv --checkpoint_dir chembl_checkpoints --preds_path chembl_preds.csv
python predict.py --test_path data/freesolv.csv --checkpoint_dir freesolv_checkpoints --preds_path freesolv_preds.csv
python predict.py --test_path data/muv.csv --checkpoint_dir muv_checkpoints --preds_path muv_preds.csv
python predict.py --test_path data/pdbbind_full.csv --checkpoint_dir pdbbind_full_checkpoints --preds_path pdbbind_full_preds.csv
python predict.py --test_path data/qm8.csv --checkpoint_dir qm8_checkpoints --preds_path qm8_preds.csv
python predict.py --test_path data/tox21.csv --checkpoint_dir tox21_checkpoints --preds_path tox21_preds.csv