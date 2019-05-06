rm -rf $TRAVIS_BUILD_DIR/tag.txt && (curl --silent "https://api.github.com/repos/v2ray/v2ray-core/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/') > "$TRAVIS_BUILD_DIR/tag.txt"
