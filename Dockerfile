# ============================================================
# SECURITY PATCH — Auto-generated dockerfile_fixed
# Date: 2025-07-15
# Vulnerabilities addressed:
#   - CVE-2026-28389: libssl3 3.3.6-r0 → 3.3.7-r0 (HIGH)
#   - CVE-2026-31790: libssl3 3.3.6-r0 → 3.3.7-r0 (CRITICAL)
#   - CVE-2026-28390: libssl3 3.3.6-r0 → 3.3.7-r0 (HIGH)
#   - CVE-2026-28387: libssl3 3.3.6-r0 → 3.3.7-r0 (HIGH)
#   - CVE-2026-31789: libssl3 3.3.6-r0 → 3.3.7-r0 (HIGH)
#   - CVE-2026-28388: libssl3 3.3.6-r0 → 3.3.7-r0 (HIGH)
#   - CVE-2026-28389: libcrypto3 3.3.6-r0 → 3.3.7-r0 (HIGH)
#   - CVE-2026-31790: libcrypto3 3.3.6-r0 → 3.3.7-r0 (CRITICAL)
#   - CVE-2026-28390: libcrypto3 3.3.6-r0 → 3.3.7-r0 (HIGH)
#   - CVE-2026-28387: libcrypto3 3.3.6-r0 → 3.3.7-r0 (HIGH)
#   - CVE-2026-31789: libcrypto3 3.3.6-r0 → 3.3.7-r0 (HIGH)
#   - CVE-2026-28388: libcrypto3 3.3.6-r0 → 3.3.7-r0 (HIGH)
#   - CVE-2026-40200: musl 1.2.5-r1 → 1.2.5-r3 (HIGH)
#   - CVE-2026-40200: musl-utils 1.2.5-r1 → 1.2.5-r3 (HIGH)
# Vulnerabilities skipped (not applicable to runtime image):
#   (none)
# OS: Alpine 3.20
# Package Manager: apk
# Base image EOL status: SUPPORTED
# Strategy: only-upgrade
#
# Package Manifest (4 packages from fix_plan.json):
#   [UPGRADE] libssl3 — curated, Category A runtime lib (openssl family)
#   [UPGRADE] libcrypto3 — curated, Category A runtime lib (openssl family)
#   [UPGRADE] musl — curated, Category A runtime lib (C library)
#   [UPGRADE] musl-utils — curated, Category A runtime utility package
# ============================================================

FROM alpine:3.20.9

LABEL maintainer="admin@lineaje.com"

# Security patch: upgrade vulnerable OS packages
# libssl3 — Fix CVE-2026-28389, CVE-2026-31790, CVE-2026-28390, CVE-2026-28387, CVE-2026-31789, CVE-2026-28388 (1 CRITICAL, 5 HIGH)
# libcrypto3 — Fix CVE-2026-28389, CVE-2026-31790, CVE-2026-28390, CVE-2026-28387, CVE-2026-31789, CVE-2026-28388 (1 CRITICAL, 5 HIGH)
# musl — Fix CVE-2026-40200 (HIGH)
# musl-utils — Fix CVE-2026-40200 (HIGH)
RUN apk update && \
    apk upgrade --no-cache \
      libssl3 \
      libcrypto3 \
      musl \
      musl-utils
