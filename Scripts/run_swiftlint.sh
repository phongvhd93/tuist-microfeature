# Run when CI environment variable is missing
if [ -z "$CI" ]; then
  "${PODS_ROOT}/SwiftLint/swiftlint"
fi
