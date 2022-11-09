# AZURE ADMIN GUIDE
Small script to manage users in Azure VM

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