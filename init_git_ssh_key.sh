#!/bin/bash


# PLAIN GIT5

  git config --global user.email "andres.namm@ut.ee"
  git config --global user.name "Andres Namm"


# AUTH
# Generate SSH key pair
ssh-keygen -t ed25519 -C "andres.namm@ut.ee" -f ~/.ssh/id_ed25519 -N ""

# Print the public key
cat ~/.ssh/id_ed25519.pub

# Print instructions for adding the key to GitHub
echo "To add the SSH key to your GitHub account, follow these steps:"
echo "1. Copy the public key above."
echo "2. Go to your GitHub account settings."
echo "3. Navigate to 'SSH and GPG keys'."
echo "4. Click on 'New SSH key'."
echo "5. Paste the public key into the 'Key' field."
echo "6. Give it a title (e.g., 'My SSH Key')."
echo "7. Click 'Add SSH key'."
