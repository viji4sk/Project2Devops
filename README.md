## ND9991 - C2- Infrastructure as Code - Supporting Material and Starter Code

Output Load Balance DNS with http : 
http://VijiP-WebAp-B1SAM4WUCFZU-928906661.us-east-1.elb.amazonaws.com

Lucid chart : Viji-Project2.jpeg

# Create the network infrastructure
createnetworkstack.sh
# Update the network infrastructure (if needed)
updatenetworkstack.sh
# Create the servers infrastructure
createserverstack.sh
# Update the servers infrastructure (if needed)
updatenetworkstack.sh

### S3 Bucket URI : s3://vijibbucket/UdagramViji.zip 
### IAM Role : EC2-Access-S3-New   & Policy Name : AmazonS3FullAccess

### Creation of  Bastion Server.
> Create Project2KeyPair via EC2 AWS Console and download the .pem file to local machine

- SSH into Bastion Server using Connect in EC2 Instance
```bash
sudo su (To change to root user with all admin rights)
vi Project2KeyPair.pem
Type the letter - i (To go into insert mode in shell terminal)
Copy-Paste contenst of Project2KeyPair
Press ESC
Type :wq and hit enter (To save the file Project2KeyPair.pem)
chmod 400 Project2KeyPair.pem (To avoid pem contents to be publicly viewable)
```
- To SSH Into problematic Ubuntu EC2 Instance (Get Private IP from EC2 Instances)
```bash 
ssh -i "Project2KeyPair.pem" ubuntu@10.0.3.80
```
- S3 Scripts
```bash 
sudo su
mkdir /var/www/temp
cd /var/www/temp/
curl https://project2-public-bucket.s3.amazonaws.com/udagram.zip -o /var/www/temp/udagram.zip (Alternate 1)
aws s3 cp s3://project2-public-bucket/udagram.zip /var/www/temp/udagram.zip (Alternate 2)
unzip -d temp-content udagram.zip 
cp -r /var/www/temp/temp-content/udagram/* /var/www/html
rm -rf temp-content udagram.zip
```
- Install AWS CLI in EC2 Instance (If Needed)
As a pre-requisite, you should first ssh into the target EC2 Instance in Private Subnet.
```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip
```

### Tutorials reference.
https://www.youtube.com/watch?v=iwSSpN5l1zk - Bastion Host
https://grapeup.com/blog/automating-your-enterprise-infrastructure-part-2-cloud-infrastructure-as-code/ - Infrastructure As Code
