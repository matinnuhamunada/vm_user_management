# AZURE ADMIN GUIDE
Small script to manage users in Azure VM

## First time login
1. Connect to github: https://docs.github.com/en/authentication/connecting-to-github-with-ssh
2. Set up HDD: https://learn.microsoft.com/en-us/azure/virtual-machines/linux/attach-disk-portal
3. Make datadrive writable to everyone: sudo chmod ugo+rwx /datadrive/
4. Install Miniconda: https://docs.conda.io/en/latest/miniconda.html#linux-installers
5. Install mamba: conda install -n base -c conda-forge mamba
6. Install azcopy: https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10
```bash
sudo cp azcopy_linux_amd64_10.16.2/azcopy /usr/local/bin
sudo chmod +x /usr/local/bin/azcopy
```
7. Install gcc: https://linuxize.com/post/how-to-install-gcc-compiler-on-ubuntu-18-04/

## Creating new user
- Use the script in [`create_users/create_user.sh`](create_user.sh)
```bash
bash create_users/create_user.sh
```
- Input the USER_ID accordingly
- The default password is bgcflow
- The user home dir will be created in `/datadrive/home`

To create multiple users
```bash
while read -r line; do bash create_users/create_user.sh $line; done < create_users/workshop_participants 
```

https://github.com/uglide/azure-content/blob/master/articles/virtual-machines/virtual-machines-linux-mac-disable-ssh-password-usage.md