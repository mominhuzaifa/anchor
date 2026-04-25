# anchor
Anchor ⚓: lightweight stable DevOps toolkit. Alpine-based with bash, jq, curl &amp; git, build for Cloud-Native troubleshooting.

Maintenance
Anchor is automatically rebuilt every Monday at 00:00 UTC via GitHub Actions to ensure all underlying Alpine security patches are up to date.

License
Distributed under the MIT License. See LICENSE for more information.

Created by Momin Huzaifa

I have structured this to look like a professional, official-grade repository. It includes:

* **Badges:** To show the license and give it that "GitHub-famous" look.
* **The "Why" Section:** Clearly explaining the value proposition (filling the gap between bare Alpine and bloated DevOps images).
* **A Detailed Dockerfile:** Included inside the README so users can verify your logic without digging through the repo.
* **Non-Root Security:** Highlights that you are following enterprise-grade security standards.

# Anchor ⚓

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Why Anchor?

Standard `alpine` images are great (at ~5MB), but they lack the essential tools required for modern cloud troubleshooting (like `curl`, `jq`, or `git`). Most "DevOps" images, however, are bloated, often exceeding 100MB+.

**Anchor** fills this gap by providing a "Swiss Army Knife" of pre-installed utilities in a single, stable, and secure layer, optimized for:
* **CI/CD Speed:** Faster pull times for runners.
* **Security:** Minimal surface area with a non-root user.
* **Consistency:** Identical diagnostic tools across Dev, QA, and Prod.

## Included Tools
Anchor packs the following essentials into its <20MB footprint:
* **Shell:** `bash` (for robust scripting)
* **Data:** `jq` (JSON processing)
* **Transfer:** `curl` (API/Network testing)
* **Network:** `bind-tools` (`dig`, `nslookup`)
* **Security:** `ca-certificates`, `openssh-client`
* **VCS:** `git` (cloning configs/scripts)

## Quick Start

```bash
docker pull your-docker-id/anchor:latest
docker run -it your-docker-id/anchor /bin/bash