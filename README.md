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

<h1 align="left">Hey there, I'm <a href="https://www.linkedin.com/in/harismuneer/">Haris </a><img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="28"> 
 <a href="https://github.com/harismuneer/Ultimate-Facebook-Scraper"><img align="right" src="https://user-images.githubusercontent.com/30947706/79588950-17515780-80ee-11ea-8f66-e26da49fa052.png" alt="Ultimate Facebook Scraper (UFS)" width="200"/></a> - Maker of Things</h1> 


### Creator of <a href="https://github.com/harismuneer/Ultimate-Facebook-Scraper">Ultimate Facebook Scraper</a> (one of the best software to collect Facebook data for research & analysis) 

<hr>

<h2 align="left">🌐 Connect</h2>
<p align="left">
  <a href="https://www.linkedin.com/in/harismuneer/"><img title="Follow on LinkedIn" src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"/></a>
  <a href="https://www.facebook.com/harismuneer99"><img title="Connect on Facebook" src="https://img.shields.io/badge/Facebook-1877F2?style=for-the-badge&logo=facebook&logoColor=white"/></a>
  <a href="https://twitter.com/harismuneer99"><img title="Follow on Twitter" src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white"/></a>
  <a href="mailto:haris.muneer5@gmail.com"><img title="Email" src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white"/></a>
  <a href="https://github.com/harismuneer"><img title="Follow on GitHub" src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"/></a>
  <a href="https://www.instagram.com/harismuneer99"><img title="Follow on Instagram" src="https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white"/></a>
  <a href="https://www.youtube.com/channel/UCZ-uBd7g0E2Bp-0tXtSlSjw?sub_confirmation=1"><img title="Subscribe on YouTube" src="https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white"/></a>
</p>


## 🤝 Consulting / Coaching
Stuck with some problem? Need help in solution development, guidance, training or capacity building? I am a Full Stack Engineer turned Project Manager with years of technical and leadership experience in a diverse range of technologies and domains. Let me know what problem you are facing at <b>haris.muneer5@gmail.com</b> and we can schedule a consultation meeting to help you get through it.

## 👨‍💻 Technical Skills & Expertise

- Development of Web Applications, Mobile Applications, and Desktop Applications
- Development of Machine Learning/Deep Learning models, and deployment 
- Web Scraping, Browser Automation, Python Scripting
<hr>


## ❤️ Support / Donations
If you or your company use any of my projects, like what I’m doing or have benefited from my projects in any way then kindly consider backing my efforts.

For donations, you can follow these simple steps:

<b>1)</b> Free signup at <b>[TransferWise](https://transferwise.com/invite/u/harism95)</b> using this link: https://transferwise.com/invite/u/harism95</li>. (Signing up through this link will save you from any transcation fee on the donation)

<b>2)</b> Select the amount e.g (15$) and choose the receiving/recipient's currency to be PKR. It supports multiple payment options (credit card, debit card, wire transfer etc)

<b>3)</b> Then it will show my info as the recipient, select it. If my name isn't shown, then type my email haris.muneer5@gmail.com in recipients.

<b>4)</b> Choose the reason for transfer to the one that suits you the most (in this case it could be 'General expenses') and in the reference section, you can mention 'Support'
 
If you face any issue in sending donation then feel free to get in touch with me at haris.muneer5@gmail.com 

Thank you for your contribution!


## Author
You can get in touch with me on my LinkedIn Profile: [![LinkedIn Link](https://img.shields.io/badge/Connect-harismuneer-blue.svg?logo=linkedin&longCache=true&style=social&label=Follow)](https://www.linkedin.com/in/harismuneer)

You can also follow my GitHub Profile to stay updated about my latest projects: [![GitHub Follow](https://img.shields.io/badge/Connect-harismuneer-blue.svg?logo=Github&longCache=true&style=social&label=Follow)](https://github.com/harismuneer)

If you liked the repo then kindly support it by giving it a star ⭐ and share in your circles so more people can benefit from the effort.


## Contributions Welcome
[![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](#)

If you find any bug in the code or have any improvements in mind then feel free to generate a pull request.

## Issues
[![GitHub Issues](https://img.shields.io/github/issues/harismuneer/Ring-Star-Hybrid-Topologies-TCL.svg?style=flat&label=Issues&maxAge=2592000)](https://www.github.com/harismuneer/Ring-Star-Hybrid-Topologies-TCL/issues)

If you face any issue, you can create a new issue in the Issues Tab and I will be glad to help you out.

## License
[![MIT](https://img.shields.io/cocoapods/l/AFNetworking.svg?style=style&label=License&maxAge=2592000)](../master/LICENSE)

Copyright (c) 2018-present, harismuneer                                                        

