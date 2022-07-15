login:
	argocd login argo.sidhulabs.ca

draw:
	argocd app create draw --repo https://github.com/sidhulabs/infra.git --path manifests/excalidraw --dest-server https://kubernetes.default.svc --dest-namespace default --sync-policy auto --auto-prune
