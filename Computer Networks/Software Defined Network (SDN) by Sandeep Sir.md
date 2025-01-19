### **What is Network Function Virtualization (NFV)?**

A **Software-Defined Network (SDN)** is a way to manage networks using software instead of relying only on hardware. It separates the part of the network that decides where data should go (control) from the part that moves the data (traffic). This makes it easier to control, automate, and change the network as needed.

- **Network Functions:** Basic tasks like switching, routing, and other networking operations.
- Traditionally, these functions are handled by physical devices like switches and routers.
- **Virtualization of Network Functions:** With NFV, these physical devices are replaced with virtual counterparts.
    - Example: When we configured a **VPC (Virtual Private Cloud)** in AWS, we virtually created and managed networking components.

### **How NFV Works**

- An example project is **Open vSwitch (OVS):**
    
    - An open-source project that creates **overlay networks**. These networks function on top of the physical network.
    - Imagine connecting your laptop to a virtual switch, which then connects to the internet.
- Types of Virtual Switches:
    
    - **NAT Switch:** Acts both as a switch and a router.
    - **Host-Only Switch:** Functions only as a basic switch.
- By virtualizing these functions, you no longer need physical hardware for every switch or router. Everything is managed on software, making networks more flexible and cost-effective.
    

---

### **Why SDN?**

When virtualizing networks with NFV, someone has to configure all the virtual routers and switches. Doing this manually is **impractical**, especially in large-scale environments with thousands of devices. This is where **SDN** comes in.

---

### **What is Software Defined Networking (SDN)?**

SDN is a way to manage and control the network programmatically using software, rather than manually configuring hardware.

#### **Key Components of SDN:**

1. **SDN Switch:**
    
    - For example, a **24-port SDN switch** was developed. As the name suggests, it has 24 ports to connect devices.
    - The **functionality is independent** of the hardware, meaning it can be programmed to behave differently as per the network's needs.
2. **OpenFlow Protocol:**
    
    - A special protocol designed to communicate between the SDN switch and the controller.
3. **Controller:**
    
    - A **software-based brain** of the SDN.
    - Most controllers are written in **Java** or **Python**.
    - It provides **APIs (Application Programming Interfaces)** to allow applications to interact with the controller.
    - The controller manages the **flow tables** of SDN devices.

---

### **How SDN Works**

1. **Flow Tables:**
    
    - SDN devices have a flow table that contains information about how to handle network packets.
    - When a packet arrives, attributes like the **MAC address** or **destination IP address** are checked in the flow table.
    - If a matching entry is found:
        - The packet is forwarded directly.
    - If no entry is found:
        - The packet is sent to the **controller** for processing.
2. **Dynamic Configuration:**
    
    - The SDN controller automates tasks like adding or deleting entries in the flow table.
    - For example:
        - When a machine is deleted, its MAC address is automatically removed from the controller's records.
        - When a new machine is added, the controller updates the flow table dynamically.
3. **Live Migration:**
    
    - If a running virtual machine (VM) has issues with its server, SDN allows the VM to be **migrated to another server** seamlessly.
    - The entire network adjusts dynamically without manual intervention.

---

### **Why SDN is Important**

- **No manual configuration:** Eliminates the need to write commands for every router or switch.
- **Dynamic and scalable:** Adapts to changes in the network environment in real time.
- **Cost-efficient:** Reduces reliance on expensive physical hardware.

---

### **Examples of SDN in Action**

- **Cisco Meraki**: A popular SDN solution.
- **Dell SDN Solution**: Another example of SDN implementation.
- There are many other manufacturers offering SDN solutions.

---

### **Additional Notes:**

- **ARP (Address Resolution Protocol):**
    
    - When you ping an IP address for the first time, an **ARP packet** is broadcast to find the MAC address of the destination.
- **Bridge Mode:**
    
    - In SDN, virtual machines often operate in **bridge mode**, where they connect to the network as if they are directly attached.

---
