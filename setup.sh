et -e

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
RESET='\033[0m'



if ! command -v terraform &> /dev/null; then
    echo -e "${YELLOW} -> Installing terraform...${RESET}"
     apt update &&  apt install -y gnupg software-properties-common
     apt install -y terraform
     echo -e "${YELLOW} -> Terraform installed successfully...${RESET}"

     echo -e "${YELLOW} -> Installing terraform...${RESET}"
     if ! command -v wget &> /dev/null; then

         wget -O- https://apt.releases.hashicorp.com/gpg | \
             gpg --dearmor | \
             tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
             echo -e "${YELLOW} -> wget installed successfully...${RESET}"
             apt policy terraform
else
    echo -e "${GREEN} -> terraform already installed.${RESET}"
fi
