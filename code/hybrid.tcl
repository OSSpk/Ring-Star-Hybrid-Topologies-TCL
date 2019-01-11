set ns [new Simulator]
set nf [open out.nam w]
$ns namtrace-all $nf

proc finish {} {
        global ns nf
        $ns flush-trace
        close $nf
        exec nam out.nam
        exit 0
}

$ns rtproto DV

# ---------------------------------------------------------
# create nodes and establish links
for {set i 1} {$i<5} {incr i} {
set r($i) [$ns node]
set h($i) [$ns node]
}

for {set i 1} {$i<15} {incr i} {
set p($i) [$ns node]
}

#Creating Links between h and p
for {set i 1} {$i<4} {incr i} {
$ns duplex-link $h(1) $p($i) 1.5Mb 10ms SFQ
$ns duplex-link $h(3) $p([expr ($i+7)]) 1.5Mb 10ms SFQ
}

for {set i 4} {$i<8} {incr i} {
$ns duplex-link $h(2) $p($i) 1.5Mb 10ms SFQ
$ns duplex-link $h(4) $p([expr ($i+7)]) 1.5Mb 10ms SFQ
}


#Creating Links between r nodes and connecting r to h
for {set i 1} {$i<4} {incr i} {
$ns duplex-link $r($i) $r([expr ($i+1)]) 1.5Mb 10ms SFQ
$ns duplex-link $r($i) $h($i) 1.5Mb 10ms SFQ
}

$ns duplex-link $r(4) $r(1) 1.5Mb 10ms SFQ
$ns duplex-link $r(4) $h(4) 1.5Mb 10ms SFQ



# orienting the nodes
$ns duplex-link-op $r(1) $h(1) orient up 
$ns duplex-link-op $r(2) $h(2) orient right
$ns duplex-link-op $r(3) $h(3) orient down
$ns duplex-link-op $r(4) $h(4) orient left


# ----------------------------------------------------
#creating tcp agents and attach
set tcp3 [new Agent/TCP] 
set tcp9 [new Agent/TCPSink]

$ns attach-agent $p(3) $tcp3
$ns attach-agent $p(9) $tcp9

$ns connect $tcp3 $tcp9

set tcp5 [new Agent/TCP] 
set tcp12 [new Agent/TCPSink]

$ns attach-agent $p(5) $tcp5
$ns attach-agent $p(12) $tcp12

$ns connect $tcp5 $tcp12

#creating FTP application for tcp agents
set ftp3 [new Application/FTP]
set ftp5 [new Application/FTP]

$ftp3 attach-agent $tcp3
$ftp5 attach-agent $tcp5
# ----------------------------------------------------

#creating udp agents and attach
set udp13 [new Agent/UDP]
set udp6 [new Agent/Null]

$ns attach-agent $p(13) $udp13
$ns attach-agent $p(6) $udp6

$ns connect $udp13 $udp6

set udp1 [new Agent/UDP]
set udp8 [new Agent/Null]

$ns attach-agent $p(1) $udp1
$ns attach-agent $p(8) $udp8

$ns connect $udp1 $udp8


#creating CBR applications for udp
set cbr13 [new Application/Traffic/CBR]

# send 50 packets in 1 second i.e 1 packet every 1/50 second
$cbr13 set packetSize_ 1536
$cbr13 set interval_ 0.02
$cbr13 attach-agent $udp13

set cbr1 [new Application/Traffic/CBR]

# send 400 packets in 1 second i.e 1 packet every 1/400 second
$cbr1 set packetSize_ 5632
$cbr1 set interval_ 0.0025
$cbr1 attach-agent $udp1

# -----------------------------------------------------

# setting events

$ns rtmodel-at 0.7 down $r(1) $r(2)
$ns rtmodel-at 1.0 up $r(1) $r(2)

$ns rtmodel-at 0.9 down $r(4) $r(3)
$ns rtmodel-at 1.3 up $r(4) $r(3)


$ns at 0.2 "$ftp3 start"
$ns at 1.8 "$ftp3 stop"

$ns at 0.3 "$ftp5 start"
$ns at 1.4 "$ftp5 stop"


$ns at 0.4 "$cbr13 start"
$ns at 1.6 "$cbr13 stop"

$ns at 0.7 "$cbr1 start"
$ns at 1.7 "$cbr1 stop"

$ns at 2.0 "finish"
$ns run
