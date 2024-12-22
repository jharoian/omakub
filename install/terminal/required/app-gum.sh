# Gum is used for the Omakub commands for tailoring Omakub after the initial install

# From Gum github site for installing on Ubuntu.  Respects architecture
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt-get update && sudo apt-get install gum
