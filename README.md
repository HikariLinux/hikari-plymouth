# Hikari Linux Plymouth theme

A boot splash with the approved Hikari Linux logo, an animated spinner,
progress bar, and boot messages. The logo and spinner are vector SVG sources;
Plymouth's required PNG assets are generated at build time with `rsvg-convert`.

## Build and install

Install GNU make, coreutils, and librsvg's command-line tools, then run:

```sh
make
make install PREFIX=/usr DESTDIR="$pkgdir"
```

After installing the package on the target system, select the `hikari` theme
and rebuild the initramfs using the distribution's normal procedure. For a
system configured for `plymouth-set-default-theme`:

```sh
sudo plymouth-set-default-theme -R hikari
```

The retained script does not implement password or text entry. Do not select
this theme for a boot flow that requires a Plymouth password prompt.

To preview on a test Linux console, start `plymouthd --no-daemon --debug` and
run `plymouth show-splash` from a second console. Hardware boot/display behavior
has not been validated by this rebrand.

## Origin and license

Based on the preserved [asahi-plymouth snapshot](https://github.com/HikariLinux/asahi-plymouth/tree/09dc321286f38757c759566a58c9b95bf088cc44),
commit `09dc321286f38757c759566a58c9b95bf088cc44`. Original history and snapshot tags are retained.
Hikari Linux maintains this project independently; this is not an official
Asahi Linux release. Original copyright and license notices are preserved.
Hikari Linux changes use the same [MIT license](LICENSE).

The Hikari logo and spinner are MIT-licensed. The historical Asahi logo and
third-party beachball are replaced in the active theme; their original files
and attributions remain available in the preserved snapshot.
