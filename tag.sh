(curl --silent "https://api.github.com/repos/v2ray/v2ray-core/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/') > "/home/travis/build/tag.txt" && \
TRAVIS_TAG=$(cat "/home/travis/build/tag.txt") && \
echo "v2ray releases ${TRAVIS_TAG}"
