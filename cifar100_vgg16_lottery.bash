for d in 0.0 0.683772234 0.9 0.9683772234 0.99 0.9968377223 0.999; do
    python open_lth.py lottery --default_hparams=cifar_vgg_16 --levels=3 --dataset_name=cifar100 --pruning_layers_to_ignore=None --pruning_fraction=$d  --training_steps=160ep  --milestone_steps=60ep,120ep --nesterov_momentum=0.9
done
