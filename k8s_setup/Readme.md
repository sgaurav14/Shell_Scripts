```markdown
# Kubernetes Cluster Setup on CentOS/RHEL

This repository contains scripts to automate the setup of a Kubernetes cluster on CentOS 7 or RHEL 8. The setup includes configuring all nodes (both master and worker nodes) and initializing the master node.

## Prerequisites

- CentOS 7 or RHEL 8 (fresh installation recommended)
- Root or sudo access
- Internet connectivity
- At least one master node and one or more worker nodes

---

## Step 1: Setup All Nodes (Master & Workers)

Run the `k8s_setup_all_nodes.sh` script on **all nodes** (master and workers) to configure the system for Kubernetes.

### **Script: `k8s_setup_all_nodes.sh`**
This script performs the following tasks:
- Disables swap (required for Kubernetes).
- Loads necessary kernel modules.
- Applies sysctl settings for networking.
- Disables SELinux.
- Installs and configures Docker.
- Sets up the Kubernetes package repository.
- Installs `kubeadm` and starts `kubelet`.

#### **Usage**
```bash
chmod +x k8s_setup_all_nodes.sh
sudo ./k8s_setup_all_nodes.sh
```

---

## Step 2: Setup Kubernetes Master Node

Run the `k8s_master_setup.sh` script **only on the master node** after completing step 1.

### **Script: `k8s_master_setup.sh`**
This script:
- Resets the containerd configuration to prevent errors.
- Initializes the Kubernetes master using `kubeadm init`.
- Configures `kubectl` for the master node.
- Deploys the Calico network plugin for pod networking.

#### **Usage**
```bash
chmod +x k8s_master_setup.sh
sudo ./k8s_master_setup.sh
```

---

## Step 3: Join Worker Nodes to the Cluster

After running `kubeadm init` on the master, it will output a `kubeadm join` command. Run this command on each **worker node** to add them to the cluster.

Example:
```bash
kubeadm join <master-ip>:6443 --token <token> --discovery-token-ca-cert-hash sha256:<hash>
```

---

## Step 4: Verify the Cluster

Once all nodes are set up, check the cluster status:

```bash
kubectl get nodes
kubectl get pods -A
```

If the setup was successful, the master and worker nodes should be in a `Ready` state.

---

## Notes

- **Firewall Rules:** The script has firewall rules commented out. Uncomment them if needed.
- **Kubernetes Repository:** Uses Aliyun’s mirror for package downloads (use another mirror if necessary).
- **Supported OS:** Tested on CentOS 7 and RHEL 8.

---

## License

This project is open-source and available under the MIT License.

---

🚀 **Happy Kubernetes Deployment!**
```
