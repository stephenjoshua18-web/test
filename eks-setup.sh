  # Creation of EKS cluster
 aws iam create-role \
  --role-name eksctl-turog-cluster-role \
  --assume-role-policy-document file://trust-policy.json

 eksctl create cluster \
  --name turog-cluster \
  --version 1.24 \
  --region us-east-1 \
  --zones us-east-1a,us-east-1b,us-east-1c \
  --nodegroup-name ekscluster-node \
  --nodes 2 \
  --nodes-min 1 \
  --nodes-max 2 \
  --node-type t3.micro \
  --node-volume-size 8 \
  --ssh-access \
  --ssh-public-key eksclusterkey \
  --managed \
  --iam-role eksctl-turog-cluster-role










  aws iam attach-role-policy --role-name AWSServiceRoleForAmazonEKS --policy-arn arn:aws:iam::aws:policy/AmazonEKSServiceRolePolicy