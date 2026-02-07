# High-level Architecture (Phase 1)

This is a **5G-inspired** cloud-native networking lab (not radio/PHY).
It models **containerized network-function style components**, edge deployment, and observability.

Traffic (UE-like)
   |
   v
[traffic-gen]  -->  [nf-gateway (nginx, "NF")]  -->  [nf-app (http-echo, "NF behind gateway")]

Observability:
- Prometheus scrapes:
  - node-exporter (host metrics)
  - cAdvisor (container metrics)
- Grafana dashboards visualize metrics

Edge node today: WSL2 Ubuntu (Linux VM)
Roadmap: Kubernetes (k3s/kind) -> AWS (EC2/VPC/ECR/EKS)