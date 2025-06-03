# **🔐 SSH Key-Based Authentication Setup Guide**

Secure Shell (SSH) key authentication provides a more secure and convenient way to log into remote servers compared to traditional password-based login.

This guide walks you through setting up SSH using key-based authentication, including generating keys, copying the public key to a remote server, and configuring both client and server-side settings.

## **✅ Prerequisites**

* A local client machine (Linux/macOS/Windows with WSL)  
* Access to a remote server via SSH  
* Basic terminal knowledge

## **🗝️ Step 1: Generate an SSH Key Pair**

Use the ssh-keygen command to generate a new RSA key pair.
```bash
ssh-keygen -t rsa -f ~/.ssh/[filename or key_name]
```
#### **You will be prompted to**

Enter passphrase (empty for no passphrase): \*\*\*\*\*\*\*\*  
Enter same passphrase again: \*\*\*\*\*\*\*\*

Result:  
Private key: \~/.ssh/your\_key\_name  
Public key: \~/.ssh/your\_key\_name.pub

## **📤 Step 2: Copy the Public Key to the Remote Server**

Use ssh-copy-id to install your public key on the remote server's \~/.ssh/authorized\_keys file.
```bash
ssh-copy-id -i ~/.ssh/[yourkey].pub user@remote_ip
```
## **🛠️ Step 3: Configure the Remote SSH Daemon (sshd\_config)**


try to login with the private-key
```bash
ssh -i ~/.ssh/private -p 8022 usr_name@id
```
On the remote server, edit the SSH daemon configuration file:
```bash
sudo nano /etc/ssh/sshd_config
```
Ensure the following options are set (or uncommented):

PubkeyAuthentication yes  
AuthorizedKeysFile .ssh/authorized\_keys  
PasswordAuthentication no  \# Optional, but recommended

❗ **Warning:** Disabling PasswordAuthentication means only key-based login will work. Be sure your key works first\!

Restart the SSH service to apply changes:
```bash
sudo systemctl restart ssh  
\# or  
sudo service ssh restart
```
## **📁 Step 4: Add Remote Host to Client-Side SSH Config**

To simplify SSH commands, configure the \~/.ssh/config file on your local machine:
```bash
nano ~/.ssh/config
```
Add the following block:
```bash
Host myserver  
    HostName remote\_ip  
    User your_username  
    IdentityFile ~/.ssh/[private_key]
```
Now you can SSH with a simple command:

ssh myserver

📌 **Optional: Permissions Checklist**

Make sure permissions are set correctly:

On Local Client:

chmod 700 \~/.ssh  
chmod 600 \~/.ssh/your\_key\_name  
chmod 644 \~/.ssh/your\_key\_name.pub

On Remote Server:

chmod 700 \~/.ssh  
chmod 600 \~/.ssh/authorized\_keys

Notes  
RSA is widely used, but you can also use ed25519 for better security and smaller key size:  
ssh-keygen \-t ed25519 \-f \~/.ssh/your\_key\_name

You can have multiple keys configured in \~/.ssh/config.

🧪 **Test the Connection**

From your client machine:

ssh myserver

You should log in without entering a password (or only the passphrase if set).

📙 **Summary**

| Step | Description |
| :---- | :---- |
| ssh-keygen | Generate RSA key pair |
| ssh-copy-id | Copy public key to remote host |
| Edit sshd\_config | Enable key authentication on server |
| ssh config (client) | Add host alias for easier access |
| Permissions | Set correct permissions to avoid key errors |



<div class="footer" style="text-align: right;">
    Last updated: June 2025
    <p>--rsvn</p>
</div>
