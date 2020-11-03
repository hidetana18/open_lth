for d in 0.0 0.9 0.99 0.999 0.9999 0.99999 0.999999; do
    python open_lth.py lottery --default_hparams=cifar_vgg_16 --levels=3 --dataset_name=cifar100 --pruning_layers_to_ignore=None --pruning_fraction=$d --training_steps=5ep --milestone_steps=4ep --nesterov_momentum=0.9
done
