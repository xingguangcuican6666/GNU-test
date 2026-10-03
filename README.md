# GNU-test

Build an AArch64 C hello world binary with a GNU target:

```bash
make
```

This uses:

- `AARCH64_TRIPLE=aarch64-linux-gnu`
- `AARCH64_CC=$(AARCH64_TRIPLE)-gcc`
- GNU-specific C functionality (`asprintf`) via `-std=gnu11`

Bionic/Android targets are intentionally not supported. For example:

```bash
make AARCH64_TRIPLE=aarch64-linux-android
```

will fail with an explicit error.

The build also checks the current system. If it detects Android (`uname -o` is `Android`), it fails because Android/Bionic does not guarantee required GNU-specific features.
