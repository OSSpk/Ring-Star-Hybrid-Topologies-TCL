# 👨‍💻 Ring-Star-Hybrid-Topologies-TCL
<a href="https://github.com/harismuneer"><img alt="views" title="Github views" src="https://komarev.com/ghpvc/?username=harismuneer&style=flat-square" width="125"/></a>
[![Open Source Love svg1](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](#)
[![GitHub Forks](https://img.shields.io/github/forks/harismuneer/Ring-Star-Hybrid-Topologies-TCL.svg?style=social&label=Fork&maxAge=2592000)](https://www.github.com/harismuneer/Ring-Star-Hybrid-Topologies-TCL/fork)
[![GitHub Issues](https://img.shields.io/github/issues/harismuneer/Ring-Star-Hybrid-Topologies-TCL.svg?style=flat&label=Issues&maxAge=2592000)](https://www.github.com/harismuneer/Ring-Star-Hybrid-Topologies-TCL/issues)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat&label=Contributions&colorA=red&colorB=black	)](#)

This repository provides **working code and complete description for Ring, Star and Hybrid Network Topologies**. The scripts are written in Tcl for NS which is used to simulate the behavior of networks and NAM is used as a visual aid showing how packets flow along the network.

## Ring Topology
<p align="middle">
  <img src="../master/images/ring.png"/>
 </p>

### Problem Statement
Write a Tcl script that forms a network consisting of 7 nodes, numbered from 0 to 6, forming a ring topology. The links have a 512Kbps bandwidth with 5ms delay and droptail queue. Set the routing protocol to DV (Distance vector). Send UDP packets from node 0 to node 3 with the rate of 100 packets/sec with each packet having a size of 1 Kilo Bytes. 

**Scheduling Events:**

- Start transmission at 0.02. 
- Bring down the link between node 2 and node 3 at 0.4. 
- Bring the dropped link back up at 1.0. Finish the transmission at 1.500. 
- End the simulation at 2.0.

## Star Topology
<p align="middle">
  <img src="../master/images/star.png"/>
 </p>

You will have to create a star topolgy using ns2 to implement the Distance vector routing protocol. Assume all the devices in the following star topology as nodes and all the wires as duplex links having a capacity of 512Kb and a propagation delay of 10ms with a stochastic fair queue scheduling algorithm. You will have to send TCP data from H1 to H4 having red color. Also you will have to send UDP data with a rate of 256Kbps from H2 to H5 having blue color.

**Scheduling Events:**
- TCP Data starts at 0.1 and stops at 1.5
- UDP Data starts at 0.2 and stops at 1.3
- Bring the link between SW1 and H5 down at 0.5 and bring it back up at 0.9
- Bring the link between SW1 and H4 down at 0.7 and bring it back up at 1.2
- Stop the simulation at 2.0

## Hybrid Topology (Combination of Ring and Star Topology)
<p align="middle">
  <img src="../master/images/hybrid.png"/>
 </p>

You will have to create a hybrid topology in correct format from ns2 to implement the Distance vector routing protocol. Assume all the devices in the toplogy as nodes and all the wires as duplex links having a capacity of 1.5Mb and a propagation delay of 10ms with a stochastic fair queue scheduling algorithm. You will have to send TCP data from p3 to p9 and from p5 to p12. You will have to send UDP data with a rate of 2200 packets/44 seconds with a single packet having a size of 1.5 Kilo Bytes from p13 to p6. Also send udp traffic from p1 to p8 such that 14800 packets are generated after each 37 seconds with each packet having a size of 5.5 Kilo Bytes.

**Scheduling Events:**
- TCP Data: From p3 to p9 (Start: 0.2, Stop: 1.8), From p5 to p12 (Start: 0.3, Stop: 1.4)
- UDP Data: From p13 to p6 (Start: 0.4, Stop: 1.6), From p1 to p8 (Start: 0.7, Stop: 1.7)
- Bring the link between r1 and r2 down at 0.7 and bring it back up at 1.0
- Bring the link between r4 and r3 down at 0.9 and bring it back up at 1.3
- Stop the simulation at 2.0

## How to Run
Just compile the topology file you want to run e.g **star.tcl** using the following command on Linux terminal. Make sure you have already installed NAM and ns2 on your Linux machine.

``` ns star.tcl ```

----------
<hr>

## Author
You can get in touch with me on my LinkedIn Profile: [![LinkedIn Link](https://img.shields.io/badge/Connect-harismuneer-blue.svg?logo=linkedin&longCache=true&style=social&label=Follow)](https://www.linkedin.com/in/harismuneer)

You can also follow my GitHub Profile to stay updated about my latest projects: [![GitHub Follow](https://img.shields.io/badge/Connect-harismuneer-blue.svg?logo=Github&longCache=true&style=social&label=Follow)](https://github.com/harismuneer)

If you liked the repo then kindly support it by giving it a star ⭐ and share in your circles so more people can benefit from the effort.


## Contributions Welcome
[![GitHub Issues](https://img.shields.io/github/issues/harismuneer/Ring-Star-Hybrid-Topologies-TCL.svg?style=flat&label=Issues&maxAge=2592000)](https://www.github.com/harismuneer/Ring-Star-Hybrid-Topologies-TCL/issues)

If you find any bugs, have suggestions, or face issues:

- Open an Issue in the Issues Tab to discuss them.
- Submit a Pull Request to propose fixes or improvements.
- Review Pull Requests from other contributors to help maintain the project's quality and progress.

This project thrives on community collaboration! Members are encouraged to take the initiative, support one another, and actively engage in all aspects of the project. Whether it’s debugging, fixing issues, or brainstorming new ideas, your contributions are what keep this project moving forward.

With modern AI tools like ChatGPT, solving challenges and contributing effectively is easier than ever. Let’s work together to make this project the best it can be! 🚀


## License
[![MIT](https://img.shields.io/cocoapods/l/AFNetworking.svg?style=style&label=License&maxAge=2592000)](../master/LICENSE)

Copyright (c) 2018-present, harismuneer                                                        


<!-- PROFILE_INTRO_START -->
<!-- PROFILE_INTRO_END -->
