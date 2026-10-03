# GNU-test

Build an AArch64 C hello world binary with a GNU target:

```bash
make
```

This uses:

- `AARCH64_TRIPLE=aarch64-linux-gnu`
- `AARCH64_CC=$(AARCH64_TRIPLE)-gcc`

Bionic/Android targets are intentionally not supported. For example:

```bash
make AARCH64_TRIPLE=aarch64-linux-android
```

will fail with an explicit error.
