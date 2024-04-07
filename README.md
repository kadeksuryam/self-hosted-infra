# My Self-Hosted Infrastructure Code

Currently, I use this infrastructure code to host my personal website [kadeksuryam.dev](https://kadeksuryam.dev)

All of this is being hosted on a VPS with a k3s cluster running on it. I also use Cloudflare for my DNS nameserver, protections, and caching.

Some of my subdomains:
- [registry.kadeksuryam.dev](https://registry.kadeksuryam.dev)  is a private container registry hosting both my public and private container images.
- [k8s-dashboard.kadeksuryam.dev](https://k8s-dashboard.kadeksuryam.dev) is a Kubernetes Dashboard for my K3s cluster, this has been secured so only IPs coming from my VPN are allowed to access the dashboard.

I also deploy my own VPN using WireGuard, but the dashboard is not public, i.e., it requires port-forwarding to my VPS server.

Thank you for visiting! Let me know if you have any questions or suggestions.

Happy self hosting 😊
