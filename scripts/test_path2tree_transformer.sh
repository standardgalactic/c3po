PATH2TREE_OUT_DIR="dataset_50_path2tree"
MODEL="model_transformer/model_step_36000.pt"

P=${NMT_OUT_DIR}; onmt_translate -model ${P}/${MODEL} -src ${P}/test.src -output ${P}/results_transformer/pred_test.txt -n_best 1 -beam_size 1 --replace_unk

PYTHON="python"
SCRIPT="paperResults/create_table.py"

${PYTHON} ${SCRIPT} ${PATH2TREE_OUT_DIR} "results_transformer"