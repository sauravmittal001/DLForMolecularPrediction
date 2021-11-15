#!/bin/sh

python MakeCSVs.py

python predict.py --test_path N/bace.csv --checkpoint_dir bace_checkpoints --preds_path N_preds/bace_preds.csv
python predict.py --test_path N/clintox.csv --checkpoint_dir clintox_checkpoints --preds_path N_preds/clintox_preds.csv
python predict.py --test_path N/hiv.csv --checkpoint_dir hiv_checkpoints --preds_path N_preds/N_hiv_preds.csv
python predict.py --test_path N/pcba.csv --checkpoint_dir pcba_checkpoints --preds_path N_preds/N_pcba_preds.csv
python predict.py --test_path N/pdbbind_refined.csv --checkpoint_dir pdbbind_refined_checkpoints --preds_path N_preds/N_pdbbind_refined_preds.csv
python predict.py --test_path N/qm9.csv --checkpoint_dir qm9_checkpoints --preds_path N_preds/N_qm9_preds.csv
python predict.py --test_path N/toxcast.csv --checkpoint_dir toxcast_checkpoints --preds_path N_preds/N_toxcast_preds.csv
python predict.py --test_path N/bbbp.csv --checkpoint_dir bbbp_checkpoints --preds_path N_preds/N_bbbp_preds.csv
python predict.py --test_path N/delaney.csv --checkpoint_dir delaney_checkpoints --preds_path N_preds/N_delaney_preds.csv
python predict.py --test_path N/lipo.csv --checkpoint_dir lipo_checkpoints --preds_path N_preds/N_lipo_preds.csv
python predict.py --test_path N/pdbbind_core.csv --checkpoint_dir pdbbind_core_checkpoints --preds_path N_preds/N_pdbbind_core_preds.csv
python predict.py --test_path N/qm7.csv --checkpoint_dir qm7_checkpoints --preds_path N_preds/N_qm7_preds.csv
python predict.py --test_path N/sider.csv --checkpoint_dir sider_checkpoints --preds_path N_preds/N_sider_preds.csv
python predict.py --test_path N/chembl.csv --checkpoint_dir chembl_checkpoints --preds_path N_preds/N_chembl_preds.csv
python predict.py --test_path N/freesolv.csv --checkpoint_dir freesolv_checkpoints --preds_path N_preds/N_freesolv_preds.csv
python predict.py --test_path N/muv.csv --checkpoint_dir muv_checkpoints --preds_path N_preds/N_muv_preds.csv
python predict.py --test_path N/pdbbind_full.csv --checkpoint_dir pdbbind_full_checkpoints --preds_path N_preds/N_pdbbind_full_preds.csv
python predict.py --test_path N/qm8.csv --checkpoint_dir qm8_checkpoints --preds_path N_preds/N_qm8_preds.csv
python predict.py --test_path N/tox21.csv --checkpoint_dir tox21_checkpoints --preds_path N_preds/N_tox21_preds.csv