# Create a Repository in Amazon ECR: 

If you haven't already, create a new repository in Amazon ECR for your application.

# Authenticate Docker to Amazon ECR:

aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <account-id>.dkr.ecr.<your-region>.amazonaws.com

Replace <your-region> and <account-id> with your AWS region and account ID.

# Build Your Docker Image:


docker build -t quince-demo-app .


docker tag quince-demo-app:latest <account-id>.dkr.ecr.<your-region>.amazonaws.com/quince-demo-app:latest

# Push the Image to ECR:


docker push <account-id>.dkr.ecr.<your-region>.amazonaws.com/quince-demo-app:latest


# Apply the Kubernetes Configuration

Apply these configurations to your Kubernetes cluster:

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml 