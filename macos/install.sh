# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "› disable gatekeeper"
sudo spctl --master-disable

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# install operator font
find `pwd` \( -name "*.otf" \) | while read font; do cp "${font}" ~/Library/Fonts/; done