git clone https://github.com/comfyanonymous/ComfyUI.git
echo "Repo cloned"
cd ComfyUI
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pip install bitsandbytes
cd custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
echo "Manager cloned"
git clone https://github.com/city96/ComfyUI-GGUF
pip install --upgrade gguf
echo "GGUF installed"
cd ..
cd models/unet
wget "https://huggingface.co/city96/FLUX.1-dev-gguf/resolve/main/flux1-dev-Q4_1.gguf" -O flux1-dev-Q4_1.gguf
cd ..
cd clip
wget "https://huggingface.co/city96/t5-v1_1-xxl-encoder-gguf/resolve/main/t5-v1_1-xxl-encoder-Q4_K_M.gguf" -O t5-v1_1-xxl-encoder-Q4_K_M.gguf
cd ../..
python main.py --listen