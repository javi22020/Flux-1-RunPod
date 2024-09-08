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
git clone https://github.com/comfyanonymous/ComfyUI_bitsandbytes_NF4.git
echo "Bits and Bytes NF4 cloned"
git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git
echo "Impact Pack cloned"
git clone https://github.com/WASasquatch/was-node-suite-comfyui.git
echo "WAS Node Suite cloned"
pip install -r was-node-suite-comfyui/requirements.txt
echo "WAS Node Suite requirements installed"
cd ..
cd models/checkpoints
wget "https://huggingface.co/lllyasviel/flux1-dev-bnb-nf4/resolve/main/flux1-dev-bnb-nf4-v2.safetensors?download=true" -O flux1-dev-bnb-nf4-v2.safetensors
cd ../..
python main.py --listen