# K8s Hello World
---

Fawad Mazhar <fawadmazhar@hotmail.com> 2024

---

A great starting point for anyone looking to learn Kubernetes. It simplifies the core components of a Kubernetes cluster and provides a practical approach to deploying applications. You will learn how to manage Pods, expose your applications through Services, work with Deployments for scaling and updates, and securely handle configurations using ConfigMaps and Secrets.

## Project Overview
This project is designed to help you get started with Kubernetes by setting up a local Kubernetes environment using Minikube. It provides hands-on experience with key Kubernetes concepts such as Services, Pods, Deployments, ConfigMaps, and Secrets. By the end of this project, you will have a basic understanding of how to deploy and manage applications in Kubernetes using simple YAML configuration files and the <code>kubectl</code> command-line tool.


#### Key Concepts Convered
- <b>Pods:</b> The smallest deployable unit in Kubernetes, representing a single instance of your running application.

- <b>Services:</b> Expose your application to external or internal traffic by creating stable endpoints for communication between Pods.

- <b>Deployments:</b> Manage the scaling and lifecycle of your Pods, ensuring that the desired number of replicas are running at all times.

- <b>ConfigMaps:</b> Store and manage configuration data separately from your application code, allowing for easy updates and management of environment-specific configurations.

- <b>Secrets:</b> Securely manage sensitive data (like API keys, passwords, etc.) in your application.


#### Tools Used
- <b>Minikube:</b> A tool that lets you run Kubernetes locally. It provides a single-node Kubernetes cluster for testing and learning purposes.

- <b>kubectl:</b> The command-line tool used to interact with Kubernetes clusters. You will use this to deploy and manage resources in the Kubernetes environment.

- <b>YAML:</b> Used for defining Kubernetes objects.


#### Prerequisites
- Install [Minikube](https://minikube.sigs.k8s.io/docs/) and ensure it's running on your local machine.
- Basic understanding of the terminal/command line and YAML file format.
- Basic understanding of containerization concepts.


#### Getting Started
1. Set up Minikube:
```bash
  minikube start
```

2. Deploy your Application:
```bash
    kubectl apply -f manifests/mongo-secret.yaml
    kubectl apply -f manifests/mongo.yaml
    kubectl apply -f manifests/mongo-configmap.yaml 
    kubectl apply -f manifests/mongo-express.yaml
```

3. Manage Kubernetes Resources:
```bash
    kubectl get pod
    kubectl get pod --watch
    kubectl get pod -o wide
    kubectl get service
    kubectl get secret
    kubectl get all | grep mongodb
```

4. Expose your Application:
```bash
    minikube service mongo-express-service
```

## Resources for Further Learning

- [Official Kubernetes Documentation](https://kubernetes.io/docs/home/)
- [Kubernetes: Up and Running (Book)](https://www.oreilly.com/library/view/kubernetes-up-and/9781491935668/)
- [Kubernetes the Hard Way (GitHub Repository)](https://github.com/kelseyhightower/kubernetes-the-hard-way)

Happy learning, and enjoy your Kubernetes journey!