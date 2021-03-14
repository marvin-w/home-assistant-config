# Home Assistant Configuration

<p align="center">
	<p align=center>
		<img src="https://github.com/marvin-w/home-assistant-config/workflows/Home%20Assistant%20CI/badge.svg">
		<a href="https://github.com/marvin-w/home-assistant-config/tree/master">
			<img src="https://img.shields.io/badge/Branch-master-green.svg?longCache=true"
				alt="Branch">
		</a>
		<img src="https://img.shields.io/badge/haversion-%VERSION-blue.svg">
		<img src="https://img.shields.io/badge/automations-%AUTOMATIONS-purple.svg">
	</p>
</p>

## Hardware

The backbone of my home is using KNX, an open standard for commercial and domestic building automation.

All my microservices, couple websites and other stuff including home assistant is hosted on a Cisco C240 M3 that is connected to my UDM Pro. Both are located in a 19" server rack.

Beside the UDM Pro I also have 3 Unifi AP AC Pros and a 16 port PoE Switch.

I also use a 6 bay Synology NAS for making backups, creating PVCs for my kubernetes cluster and saving video streams.

Last but not least there are also a couple Raspis sitting around here and there for instance for enocean mqtt or octoprint.

## Software

My Home Assistant runs on a single node Kubernetes cluster within my rack at home. I decided to go for this approach simply because I love how easy it is to configure new deployments and how great the
scheduler of kubernetes works.

Over the past few years I have extended my home with many more integrations. I'm currently using the following:

- KNX (for lights, climate, covers, door, etc.)
- ZWave (smart plugs with power meters for those that can not already be controlled with KNX)
- EnOcean (window handles)
- Garadget (for my garage door)
- MQTT (for my vacuum, garadget and also enocean)
- Synology NAS (monitoring and camera)
- Spotify (well, for listening to spotify)
- Onkyo (for my stereo receiver)
- Octoprint (for my 3D printer)
- Alexa (voice assistant)

## Approach to automations

Our automations should adapt to us, not the opposite, they are there to add value to the interactions we have with our living space.

A great article by Paulus Schoutsen can be found [here](https://www.home-assistant.io/blog/2016/01/19/perfect-home-automation/).
