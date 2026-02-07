# Mini 5G Edge Testbed (Cloud-Native Networking Lab)

A **5G-inspired** cloud-native networking testbed focused on the **system architecture** side of 5G (network functions, edge deployment, automation, and observability) — **not** a radio/PHY implementation.

## What “5G” means here (honest scope)
This project models **5G-style principles**:
- **Network Functions (NFs)** as independent, containerized components
- **Edge deployment mindset** (run near-user on a Linux node / VM; Raspberry Pi can be added later)
- **Automation-first** approach (CI/CD → Kubernetes/AWS roadmap)
- **Observability** as a first-class feature (Prometheus + Grafana)

## High-level architecture
Traffic / UE-like load
→ **NF Gateway (simulated NF)**  
→ **NF App (service behind the gateway)**  
→ Metrics scraped by **Prometheus**  
→ Visualized in **Grafana**

Edge Node (today): **WSL2 Ubuntu / Linux VM**  
Future (roadmap): **Kubernetes (k3s/kind → EKS)** + **AWS (EC2/VPC/ECR)**

## Status
**Ongoing.**
Phase 1 focuses on a working edge stack + monitoring dashboard.
Next phases extend to Kubernetes orchestration and AWS deployment.

## Planned phases
- **Phase 1 (now):** Docker Compose testbed + traffic + Prometheus/Grafana dashboard
- **Phase 2:** Kubernetes migration (k3s/kind), basic CI pipeline
- **Phase 3:** AWS exposure (EC2/VPC, optional ECR), deploy automation
- **Phase 4 (optional):** Replace simulated NFs with Open5GS/Free5GC components + UERANSIM

## Quickstart (coming next)
You will be able to run:
```bash
./scripts/up.sh
./scripts/test.sh
./scripts/down.sh
