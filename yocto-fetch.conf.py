
# in seconds
fetch_interval = 5 * 60

# specify output directory
outdir = "/"

# executed in order in shell env
cmds = [
    "if [ ! -d yocto ]; then git clone git://git.yoctoproject.org/poky && cd poky && git checkout -b pyro origin/pyro; fi",
    "if [ -d yocto ]; then cd yocto && git remote update; fi",
    "cd poky && . ./oe-init-build-env && bitbake core-image-minimal -c fetchall"
]

servedir = "poky/build/downloads"
