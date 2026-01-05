# 🚀 Automated Kubernetes Deployment with CI/CD

## 📌 Overview
This project demonstrates an end-to-end **automated DevOps workflow** for deploying a simple “Hello World” web application to a **managed Kubernetes cluster** using modern DevOps best practices.

The solution includes:
- Infrastructure provisioning using **Terraform**
- Application containerization with **Docker**
- Kubernetes deployment using **Helm**
- Automated **CI/CD pipeline** with GitHub Actions
- **Secrets management**, **monitoring**, and **security scanning**

Any code push to the `main` branch automatically builds, scans, and deploys the application to Kubernetes.

---

## 🏗️ Architecture Overview

**Workflow:**
1. Developer pushes code to GitHub (`main` branch)
2. GitHub Actions pipeline triggers
3. Docker image is built and pushed to Docker Hub
4. Image is scanned for vulnerabilities
5. Helm deploys the application to Kubernetes
6. Application is exposed via a LoadBalancer service

---

## 🧰 Technology Stack

- **Cloud Provider**: AWS (EKS)
- **Infrastructure as Code**: Terraform
- **Containerization**: Docker
- **Orchestration**: Kubernetes
- **Package Manager**: Helm
- **CI/CD**: GitHub Actions
- **Monitoring**: Prometheus & Grafana
- **Security**: Trivy (container image scanning)

---

## 📂 Repository Structure

```text
.
├── app/
│   └── index.html
├── Dockerfile
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── helm/
│   └── hello-app/
│       ├── Chart.yaml
│       ├── values.yaml
│       └── templates/
│           ├── deployment.yaml
│           ├── service.yaml
│           └── secret.yaml
├── .github/
│   └── workflows/
│       └── deploy.yml
└── README.md

