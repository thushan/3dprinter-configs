# 3D Printer Configurations

These are my personal 3D Printer Configurations for various printers, their configurations, data-sheets and any modifications done and source files if available (or STLs otherwise).

# Printers

* [Artillery Genius](./artillery-genius/README.md) (v1.0) [[info](https://artillery3d.com/products/artillery-genius-3d-printer-kit-220220250mm-print-size-with-ultra-quiet-stepper-motor-tft-touch-screen)]
* [FLSun Super Racer](./flsun-super-racer/README.md) [[info](https://flsun3d.com/products/super-racer-sr)]
* Voron 2.4 [[info](https://vorondesign.com/voron2.4)]
* RatRig v-Core 3.1 [[info](https://ratrig.com/3d-printers/rat-rig-kits/v-core3default.html)]

No longer used/sold:

* Prusa i3 MK2 (2016)
* Prusa i3 MK3 (2017)
* Cocoon Create Plus (2016)
* Creality Ender 3 (2018)

# Print Servers

Due to the shortage of RaspberryPi's (and honestly, they're better suited for cooler things) the Printers run off two types of single board computers - spares I've had around from Kickstarter campaigns.

* [Pine A64](https://www.kickstarter.com/projects/pine64/pine-a64-first-15-64-bit-single-board-super-comput) from Kickstarter
* [Udoo x86](https://www.kickstarter.com/projects/udoo/udoo-x86-the-most-powerful-maker-board-ever) from Kickstarter

Core OS is [DietPi](https://dietpi.com/#download), specific to their architecture and have Klipper via [Kiauh](https://github.com/th33xitus/kiauh).

[Mainsail](https://docs.mainsail.xyz/) (2023) is the current Klipper front-end - but nothing against Fluidd or [OctoPrint](https://octoprint.org/).

Power was measured by [KASA KP114 Smart Plugs](https://www.tp-link.com/au/home-networking/smart-plug/kp115/). Goal is to minimise power utilisation (disabling/tweaking BIOS/Configuration to do so).

Printer power usage & telemetry is captured in HomeAssistant for profiling print jobs/costs.

## Udoo x86 Setup

See [Udoo x86 Specifications](https://www.udoo.org/docs-x86/Introduction/Introduction.html).

<table>
  <tr>
    <th>CPU</th>
    <td><a href="https://www.intel.com/content/www/us/en/products/sku/92124/intel-atom-x5e8000-processor-2m-cache-up-to-2-00-ghz/specifications.html">Intel(R) Atom(TM) x5-E8000  CPU @ 1.04GHz</a> (x86_64)</td>
  </tr>
  <tr>
    <th>RAM</th>
    <td>2GB</td>
  </tr>
  <tr>
    <th>Power Profile</th>
    <td>3.5w - 4.8w</td>
  </tr>
  <tr>
    <th>Disk</th>
    <td><a href="https://www.intel.com/content/dam/www/public/us/en/documents/product-specifications/ssd-530-sata-specification.pdf">Intel® Solid-State Drive 530 Series 120GB</a> SATA (INTEL SSDSC2BW120A4)</td>
  </tr>
  <tr>
    <th>OS</th>
    <td>DietPi PINE A64: Bookworm (Debian 13)<br/> 
    <small><a href="https://dietpi.com/downloads/images/DietPi_PINEA64-ARMv8-Bookworm.7z">DietPi_PINEA64-ARMv8-Bookworm</a> | <a href="https://github.com/th33xitus/kiauh">Kiauh Installer</a></small></td>
  </tr>
  <tr>
  <th>Limitations <br/>& Notes</th>
  <td>
    <ul>
     <li>3x USB 3.0 Ports</li>
     <li>SATA for Disk</li>
     <li>External 12v Power Supply</li>
     <li>GPIO Pins for sensors</li>
    </ul>
  </td>
  </tr>
</table>

Primarily for Voron, RatRig & FLSun, Artillery machines.

## Pine A64 Setup

See [Pine A64 2GB Specifications](https://wiki.pine64.org/wiki/PINE_A64).

<table>
  <tr>
    <th>CPU</th>
    <td><a href="https://www.arm.com/products/processors/cortex-a/cortex-a53-processor.php">Quad-core ARM Cortex-A53 Processor @ 1152Mhz</a> (ARMv8)</td>
  </tr>
  <tr>
    <th>RAM</th>
    <td>2GB</td>
  </tr>
  <tr>
    <th>Power Profile</th>
    <td>2.2w - 2.8w</td>
  </tr>
  <tr>
    <th>Disk</th>
    <td><a href="https://www.westerndigital.com/en-au/products/memory-cards/sandisk-high-endurance-uhs-i-microsd#SDSQQNR-032G-GN6IA">SanDisk® High Endurance 32GB microSD Card</a> (SDSQQNR-032G-GN6IA)</td>
  </tr>
  <tr>
    <th>OS</th>
    <td>DietPi PINE A64: Bookworm (Debian 13)<br/> 
    <small><a href="https://dietpi.com/downloads/images/DietPi_PINEA64-ARMv8-Bookworm.7z">DietPi_PINEA64-ARMv8-Bookworm</a> | <a href="https://github.com/th33xitus/kiauh">Kiauh Installer</a></small></td>
  </tr>
  <tr>
  <th>Limitations <br/>& Notes</th>
  <td>
    <ul>
     <li>2x USB 2.0 Ports</li>
     <li>MicroSD for OS</li>
     <li>Powered by 5v USB port</li>
     <li>GPIO Pins for sensors</li>
     <li>Slow for application updates etc, fine for Klipper</li>
    </ul>
  </td>
  </tr>
</table>

Primarily for Cocoon Create & Ender 3 machines.

# Acknowledgements

This repository contains the hard work of the following repositories/individuals:

* [@cupsster](https://github.com/cupsster/FLSUN-SR---Klipper-Config/tree/master) -  Klipper sprinkles.
* [@dudeofawesome](https://github.com/dudeofawesome/klipper-config) - Original Ender 3 Klipper bits.
* [@blacknet](https://github.com/BlackNet/Voron_2.4) - Voron Sprinkles.
* [@rootiest](https://github.com/rootiest/zippy-klipper_config) - Voron tweaks & setup.
* [@Guilouz](https://github.com/Guilouz/Klipper-Flsun-Super-Racer) - FLSun configuration base.