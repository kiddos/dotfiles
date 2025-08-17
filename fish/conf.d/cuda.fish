set -x CUDA_HOME /usr/local/cuda
if test -d $CUDA_HOME
  fish_add_path -P $CUDA_HOME/bin
end
