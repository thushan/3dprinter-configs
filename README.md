# 3D Printer Configurations

These are my personal 3D Printer Configurations for various printers, their configurations, data-sheets and any modifications done and source files if available (or STLs otherwise).

# Printers

* [Artillery Genius](./artillery-genius/README.md) (v1.0) ([info](https://artillery3d.com/products/artillery-genius-3d-printer-kit-220220250mm-print-size-with-ultra-quiet-stepper-motor-tft-touch-screen))
* Cocoon Create Touch (Wanhao i3 Duplicator Touch Clone) ([info](https://cocoonproducts.com.au/all-products/3dprinters/3d-printer-touch/))
* FLSun Super Racer ([info](https://flsun3d.com/products/super-racer-sr))
* Voron 2.4 ([info](https://vorondesign.com/voron2.4))

# Printer Server

All printers run off either [Mainsail](https://docs.mainsail.xyz/) or [OctoPrint](https://octoprint.org/) and currently run on a 64bit [Pine A64 2GB board](https://wiki.pine64.org/wiki/PINE_A64) which was obtained on [Kickstarter in 2016](https://www.kickstarter.com/projects/pine64/pine-a64-first-15-64-bit-single-board-super-comput).


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
    <td>DietPi <br/> 
    <small><a href="https://dietpi.com/downloads/images/DietPi_PINEA64-ARMv8-Bullseye.7z">DietPi_PINEA64-ARMv8-Bullseye</a> | <a href="https://github.com/th33xitus/kiauh">Kiauh Installer</a></small></td>
  </tr>
</table>