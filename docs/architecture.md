# High-Level Architecture (Phase 1)

This project is a **5G-inspired, cloud-native Network Function (NF) lab**, focused on **system architecture, edge deployment, automation readiness, and observability** — **not** on radio/PHY implementation.

It models how modern **5G core network functions** are designed, deployed, and monitored using **containerized, cloud-native principles**.

---

## Architecture Overview

![5G-Inspired Cloud-Native NF Architecture](images/Architecture.png)

**Figure 1:** *Phase 1 – 5G-Inspired Cloud-Native Network Function Testbed*

---

## Traffic Flow (Data Plane)

The data plane simulates **UE-like application traffic** passing through a simplified **network function chain**, inspired by 5G user-plane behavior.

UE-like Traffic
|
v
[ traffic-gen ]
|
v
[ nf-gateway (nginx – simulated Network Function) ]
|
v
[ nf-app (http-echo – NF behind gateway) ]


### Component Roles

- **traffic-gen**  
  Simulates UE-like traffic generation to validate data-plane flow.

- **nf-gateway (nginx)**  
  Acts as a gateway-style **Network Function (NF)**, representing ingress or user-plane processing.

- **nf-app (http-echo)**  
  Represents a backend network function or service behind the gateway.

This mirrors **5G Network Function chaining** in a simplified, cloud-native form.

---

## Observability & Monitoring (Operations Plane)

Observability is treated as a **first-class requirement**, similar to real-world 5G deployments.

### Metrics Collection

- **Prometheus** scrapes metrics from:
  - **node-exporter** → edge host metrics (CPU, memory)
  - **cAdvisor** → container-level metrics for network functions

### Visualization

- **Grafana** provides real-time dashboards showing:
  - Edge node health
  - Containerized NF CPU and memory usage
  - Resource behavior under continuous traffic

This reflects operational monitoring practices used in **cloud-native 5G core environments**.

---

## Edge Deployment Context

- **Current Edge Node**
  - WSL2 Ubuntu (Linux VM)
  - Used to emulate a constrained edge-computing environment

- **Deployment Model**
  - Containerized network functions using Docker
  - One-command deployment (automation-ready)
  - Designed to be portable to Kubernetes

This setup follows **Multi-access Edge Computing (MEC)** concepts commonly used in 5G.

---

## Project Status

🚧 **Ongoing** — Phase 1 completed; orchestration and cloud phases planned.
