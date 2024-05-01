# curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | tee /etc/apt/sources.list.d/ngrok.list && apt update && apt install ngrok -y &&\

mkdir ~/.config &&\
mkdir ~/.config/ngrok &&\
# ngrok config add-authtoken 2bhKSvCIlebyj6MK5eIsbCKWWqL_yVCFAadegfCRRHhsP42r &&\
touch ~/.config/ngrok/ngrok.yml &&\
echo "version: 2" > ~/.config/ngrok/ngrok.yml &&\
echo "authtoken: 2bhKSvCIlebyj6MK5eIsbCKWWqL_yVCFAadegfCRRHhsP42r" >> ~/.config/ngrok/ngrok.yml &&\
./llava-v1.5-7b-q4.llamafile --server --nobrowser &\
ngrok http --domain=vastly-pleasing-sunbeam.ngrok-free.app 8080
# cat ~/.config/ngrok/ngrok.yml &&\   
# ngrok config check
echo "This is running inside the container"