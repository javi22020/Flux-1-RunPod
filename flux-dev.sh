git clone https://github.com/comfyanonymous/ComfyUI.git
echo "Repo cloned"
cd ComfyUI
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
cd custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
echo "Manager cloned"
cd ..
cd models/checkpoints
wget "https://huggingface.co/lllyasviel/flux1-dev-bnb-nf4/resolve/main/flux1-dev-bnb-nf4-v2.safetensors?download=true" -O flux1-dev-bnb-nf4-v2.safetensors
cd ../..
python main.py --listen