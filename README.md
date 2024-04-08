# My Self-Hosted Infrastructure Code

Currently, I use this infrastructure code to host my personal website [kadeksuryam.dev](https://kadeksuryam.dev)

All of this is being hosted on a VPS with a k3s cluster running on it. I also use Cloudflare for my DNS nameserver, protections, and caching.

Some of my subdomains:

Public:
- [registry.kadeksuryam.dev](https://registry.kadeksuryam.dev) is a private container registry hosting both my public and private container images.

Private: <br />
These services can only be accessed from IPs coming from my VPN.
- [k8s-dashboard.kadeksuryam.dev](https://k8s-dashboard.kadeksuryam.dev) is a Kubernetes Dashboard for my K3s cluster.
- [argo-cd.kadeksuryam.dev](https://argo-cd.kadeksuryam.dev/) is my Argo CD server, which I use to learn more about GitOps and apply it to my other projects.

I deploy my own VPN using WireGuard, but the dashboard is not public, i.e., it requires port-forwarding to my VPS server.

Some additional tools I use:

- [SOPS](https://github.com/getsops/sops) with [Age](https://github.com/FiloSottile/age) for encrypting my k8s secrets.

Thank you for visiting! Let me know if you have any questions or suggestions.

Happy self hosting 😊
